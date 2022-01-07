
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct uio {int uio_iovcnt; int uio_segflg; int * uio_iov; } ;
struct mntarg {int len; int error; int * v; } ;


 int KASSERT (int,char*) ;
 int UIO_SYSSPACE ;
 int curthread ;
 int free_mntarg (struct mntarg*) ;
 int vfs_donmount (int ,int ,struct uio*) ;

int
kernel_mount(struct mntarg *ma, uint64_t flags)
{
 struct uio auio;
 int error;

 KASSERT(ma != ((void*)0), ("kernel_mount NULL ma"));
 KASSERT(ma->v != ((void*)0), ("kernel_mount NULL ma->v"));
 KASSERT(!(ma->len & 1), ("kernel_mount odd ma->len (%d)", ma->len));

 auio.uio_iov = ma->v;
 auio.uio_iovcnt = ma->len;
 auio.uio_segflg = UIO_SYSSPACE;

 error = ma->error;
 if (!error)
  error = vfs_donmount(curthread, flags, &auio);
 free_mntarg(ma);
 return (error);
}
