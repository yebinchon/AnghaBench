
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct uio {int uio_iovcnt; int uio_resid; int uio_offset; int * uio_td; int uio_segflg; int uio_rw; struct iovec* uio_iov; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsheur {int nh_seqcount; int nh_nextoff; } ;
struct mbuf {struct mbuf* m_next; scalar_t__ m_len; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
typedef int off_t ;
struct TYPE_2__ {int* srvbytes; } ;


 int ENOENT ;
 int IO_NODELOCKED ;
 int IO_SEQSHIFT ;
 int MCLGET (struct mbuf*,int ) ;
 int M_TEMP ;
 int M_TRAILINGSPACE (struct mbuf*) ;
 int M_WAITOK ;
 int NFSEXITCODE (int) ;
 int NFSMGET (struct mbuf*) ;
 int NFSM_RNDUP (int) ;
 int NFSPROC_READDS ;
 size_t NFSV4OP_READ ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VOP_READ (struct vnode*,struct uio*,int,struct ucred*) ;
 int caddr_t ;
 int free (struct iovec*,int ) ;
 int m_freem (struct mbuf*) ;
 struct iovec* malloc (int,int ,int ) ;
 int min (int ,int) ;
 scalar_t__ mtod (struct mbuf*,int ) ;
 int nfsrv_adj (struct mbuf*,int,int) ;
 int nfsrv_proxyds (struct vnode*,int ,int,struct ucred*,struct thread*,int ,struct mbuf**,int *,struct mbuf**,int *,int *) ;
 struct nfsheur* nfsrv_sequential_heuristic (struct uio*,struct vnode*) ;
 TYPE_1__ nfsstatsv1 ;
 int panic (char*) ;

int
nfsvno_read(struct vnode *vp, off_t off, int cnt, struct ucred *cred,
    struct thread *p, struct mbuf **mpp, struct mbuf **mpendp)
{
 struct mbuf *m;
 int i;
 struct iovec *iv;
 struct iovec *iv2;
 int error = 0, len, left, siz, tlen, ioflag = 0;
 struct mbuf *m2 = ((void*)0), *m3;
 struct uio io, *uiop = &io;
 struct nfsheur *nh;





 error = nfsrv_proxyds(vp, off, cnt, cred, p, NFSPROC_READDS, mpp,
     ((void*)0), mpendp, ((void*)0), ((void*)0));
 if (error != ENOENT)
  return (error);

 len = left = NFSM_RNDUP(cnt);
 m3 = ((void*)0);



 i = 0;
 while (left > 0) {
  NFSMGET(m);
  MCLGET(m, M_WAITOK);
  m->m_len = 0;
  siz = min(M_TRAILINGSPACE(m), left);
  left -= siz;
  i++;
  if (m3)
   m2->m_next = m;
  else
   m3 = m;
  m2 = m;
 }
 iv = malloc(i * sizeof (struct iovec),
     M_TEMP, M_WAITOK);
 uiop->uio_iov = iv2 = iv;
 m = m3;
 left = len;
 i = 0;
 while (left > 0) {
  if (m == ((void*)0))
   panic("nfsvno_read iov");
  siz = min(M_TRAILINGSPACE(m), left);
  if (siz > 0) {
   iv->iov_base = mtod(m, caddr_t) + m->m_len;
   iv->iov_len = siz;
   m->m_len += siz;
   left -= siz;
   iv++;
   i++;
  }
  m = m->m_next;
 }
 uiop->uio_iovcnt = i;
 uiop->uio_offset = off;
 uiop->uio_resid = len;
 uiop->uio_rw = UIO_READ;
 uiop->uio_segflg = UIO_SYSSPACE;
 uiop->uio_td = ((void*)0);
 nh = nfsrv_sequential_heuristic(uiop, vp);
 ioflag |= nh->nh_seqcount << IO_SEQSHIFT;

 nfsstatsv1.srvbytes[NFSV4OP_READ] += uiop->uio_resid;
 error = VOP_READ(vp, uiop, IO_NODELOCKED | ioflag, cred);
 free(iv2, M_TEMP);
 if (error) {
  m_freem(m3);
  *mpp = ((void*)0);
  goto out;
 }
 nh->nh_nextoff = uiop->uio_offset;
 tlen = len - uiop->uio_resid;
 cnt = cnt < tlen ? cnt : tlen;
 tlen = NFSM_RNDUP(cnt);
 if (tlen == 0) {
  m_freem(m3);
  m3 = ((void*)0);
 } else if (len != tlen || tlen != cnt)
  nfsrv_adj(m3, len - tlen, tlen - cnt);
 *mpp = m3;
 *mpendp = m2;

out:
 NFSEXITCODE(error);
 return (error);
}
