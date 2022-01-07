
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uoff_t ;
struct vnode {scalar_t__ v_type; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
typedef size_t ssize_t ;
typedef int off_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef enum uio_rw { ____Placeholder_uio_rw } uio_rw ;


 int MAXBSIZE ;
 int PRI_USER ;
 int UIO_READ ;
 scalar_t__ VREG ;
 int bwillwrite () ;
 int kern_yield (int ) ;
 int vn_rdwr (int,struct vnode*,void*,int,int,int,int,struct ucred*,struct ucred*,size_t*,struct thread*) ;

int
vn_rdwr_inchunks(enum uio_rw rw, struct vnode *vp, void *base, size_t len,
    off_t offset, enum uio_seg segflg, int ioflg, struct ucred *active_cred,
    struct ucred *file_cred, size_t *aresid, struct thread *td)
{
 int error = 0;
 ssize_t iaresid;

 do {
  int chunk;







  chunk = MAXBSIZE - (uoff_t)offset % MAXBSIZE;

  if (chunk > len)
   chunk = len;
  if (rw != UIO_READ && vp->v_type == VREG)
   bwillwrite();
  iaresid = 0;
  error = vn_rdwr(rw, vp, base, chunk, offset, segflg,
      ioflg, active_cred, file_cred, &iaresid, td);
  len -= chunk;
  if (error)
   break;
  offset += chunk;
  base = (char *)base + chunk;
  kern_yield(PRI_USER);
 } while (len);
 if (aresid)
  *aresid = len + iaresid;
 return (error);
}
