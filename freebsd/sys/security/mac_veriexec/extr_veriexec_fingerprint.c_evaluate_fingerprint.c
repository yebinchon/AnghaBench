
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void uint8_t ;
struct vnode {int dummy; } ;
struct thread {int td_ucred; } ;
struct mac_veriexec_file_info {TYPE_1__* ops; } ;
typedef size_t off_t ;
struct TYPE_2__ {size_t context_size; size_t digest_len; int (* final ) (unsigned char*,void*) ;int (* update ) (void*,void*,size_t) ;int (* init ) (void*) ;} ;


 int EINVAL ;
 int IO_NODELOCKED ;
 int M_VERIEXEC ;
 int M_WAITOK ;
 int NOCRED ;
 size_t PAGE_SIZE ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int free (void*,int ) ;
 void* malloc (size_t,int ,int ) ;
 int printf (char*,...) ;
 int stub1 (void*) ;
 int stub2 (void*,void*,size_t) ;
 int stub3 (unsigned char*,void*) ;
 int vn_rdwr_inchunks (int ,struct vnode*,void*,size_t,size_t,int ,int ,int ,int ,size_t*,struct thread*) ;

__attribute__((used)) static int
evaluate_fingerprint(struct vnode *vp, struct mac_veriexec_file_info *ip,
    struct thread *td, off_t file_size, unsigned char *fingerprint)
{
 uint8_t *filebuf;
 void *ctx;
 off_t offset;
 size_t count, nread, resid;
 int error = EINVAL;

 filebuf = malloc(PAGE_SIZE, M_VERIEXEC, M_WAITOK);
 ctx = malloc(ip->ops->context_size, M_VERIEXEC, M_WAITOK);

 (ip->ops->init)(ctx);
 for (offset = 0; offset < file_size; offset += nread) {
  if ((offset + PAGE_SIZE) > file_size)
   count = file_size - offset;
  else
   count = PAGE_SIZE;

  error = vn_rdwr_inchunks(UIO_READ, vp, filebuf, count, offset,
      UIO_SYSSPACE, IO_NODELOCKED, td->td_ucred, NOCRED, &resid,
      td);
  if (error)
   goto failed;

  nread = count - resid;
  (ip->ops->update)(ctx, filebuf, nread);
 }
 (ip->ops->final)(fingerprint, ctx);







failed:
 free(ctx, M_VERIEXEC);
 free(filebuf, M_VERIEXEC);
 return (error);
}
