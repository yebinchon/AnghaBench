
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct uio {int uio_iovcnt; int uio_resid; int uio_offset; int uio_segflg; int uio_rw; struct iovec* uio_iov; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct nfsheur {int nh_seqcount; int nh_nextoff; } ;
struct mbuf {int m_len; struct mbuf* m_next; } ;
struct iovec {char* iov_base; int iov_len; } ;
typedef int off_t ;
struct TYPE_2__ {int* srvbytes; } ;


 int ENOENT ;
 int IO_NODELOCKED ;
 int IO_SEQSHIFT ;
 int IO_SYNC ;
 int M_TEMP ;
 int M_WAITOK ;
 int NFSEXITCODE (int) ;
 int NFSPROC_WRITEDS ;
 int NFSUIOPROC (struct uio*,struct thread*) ;
 size_t NFSV4OP_WRITE ;
 int NFSWRITE_FILESYNC ;
 int NFSWRITE_UNSTABLE ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int VOP_WRITE (struct vnode*,struct uio*,int,struct ucred*) ;
 int caddr_t ;
 int free (struct iovec*,int ) ;
 struct iovec* malloc (int,int ,int ) ;
 int min (int,int) ;
 char* mtod (struct mbuf*,int ) ;
 int nfsrv_proxyds (struct vnode*,int ,int,struct ucred*,struct thread*,int ,struct mbuf**,char*,int *,int *,int *) ;
 struct nfsheur* nfsrv_sequential_heuristic (struct uio*,struct vnode*) ;
 TYPE_1__ nfsstatsv1 ;
 int panic (char*) ;

int
nfsvno_write(struct vnode *vp, off_t off, int retlen, int cnt, int *stable,
    struct mbuf *mp, char *cp, struct ucred *cred, struct thread *p)
{
 struct iovec *ivp;
 int i, len;
 struct iovec *iv;
 int ioflags, error;
 struct uio io, *uiop = &io;
 struct nfsheur *nh;





 error = nfsrv_proxyds(vp, off, retlen, cred, p, NFSPROC_WRITEDS,
     &mp, cp, ((void*)0), ((void*)0), ((void*)0));
 if (error != ENOENT) {
  *stable = NFSWRITE_FILESYNC;
  return (error);
 }

 ivp = malloc(cnt * sizeof (struct iovec), M_TEMP,
     M_WAITOK);
 uiop->uio_iov = iv = ivp;
 uiop->uio_iovcnt = cnt;
 i = mtod(mp, caddr_t) + mp->m_len - cp;
 len = retlen;
 while (len > 0) {
  if (mp == ((void*)0))
   panic("nfsvno_write");
  if (i > 0) {
   i = min(i, len);
   ivp->iov_base = cp;
   ivp->iov_len = i;
   ivp++;
   len -= i;
  }
  mp = mp->m_next;
  if (mp) {
   i = mp->m_len;
   cp = mtod(mp, caddr_t);
  }
 }

 if (*stable == NFSWRITE_UNSTABLE)
  ioflags = IO_NODELOCKED;
 else
  ioflags = (IO_SYNC | IO_NODELOCKED);
 uiop->uio_resid = retlen;
 uiop->uio_rw = UIO_WRITE;
 uiop->uio_segflg = UIO_SYSSPACE;
 NFSUIOPROC(uiop, p);
 uiop->uio_offset = off;
 nh = nfsrv_sequential_heuristic(uiop, vp);
 ioflags |= nh->nh_seqcount << IO_SEQSHIFT;

 nfsstatsv1.srvbytes[NFSV4OP_WRITE] += uiop->uio_resid;
 error = VOP_WRITE(vp, uiop, ioflags, cred);
 if (error == 0)
  nh->nh_nextoff = uiop->uio_offset;
 free(iv, M_TEMP);

 NFSEXITCODE(error);
 return (error);
}
