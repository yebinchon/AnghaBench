
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdc_readid {int cyl; int head; scalar_t__ secshift; } ;
struct fd_type {int heads; scalar_t__ secsize; } ;
struct fd_data {size_t type; int options; TYPE_1__* ft; int dev; } ;
struct TYPE_2__ {int flags; scalar_t__ heads; int size; } ;


 int BIO_RDID ;
 int FDOPT_NOERRLOG ;
 int FDOPT_NORETRY ;
 int FL_AUTO ;
 int debugflags ;
 int device_printf (int ,char*,...) ;
 struct fd_type** fd_native_types ;
 int fdmisccmd (struct fd_data*,int ,struct fdc_readid*) ;
 int fdprinttype (TYPE_1__*) ;
 int fdsettype (struct fd_data*,struct fd_type*) ;

__attribute__((used)) static int
fdautoselect(struct fd_data *fd)
{
 struct fd_type *fdtp;
 struct fdc_readid id;
 int oopts, rv;

 if (!(fd->ft->flags & FL_AUTO))
  return (0);

 fdtp = fd_native_types[fd->type];
 fdsettype(fd, fdtp);
 if (!(fd->ft->flags & FL_AUTO))
  return (0);
 oopts = fd->options;
 fd->options |= FDOPT_NOERRLOG | FDOPT_NORETRY;
 for (; fdtp->heads; fdtp++) {
  fdsettype(fd, fdtp);

  id.cyl = id.head = 0;
  rv = fdmisccmd(fd, BIO_RDID, &id);
  if (rv != 0)
   continue;
  if (id.cyl != 0 || id.head != 0 || id.secshift != fdtp->secsize)
   continue;
  id.cyl = 2;
  id.head = fd->ft->heads - 1;
  rv = fdmisccmd(fd, BIO_RDID, &id);
  if (id.cyl != 2 || id.head != fdtp->heads - 1 ||
      id.secshift != fdtp->secsize)
   continue;
  if (rv == 0)
   break;
 }

 fd->options = oopts;
 if (fdtp->heads == 0) {
  if (debugflags & 0x40)
   device_printf(fd->dev, "autoselection failed\n");
  fdsettype(fd, fd_native_types[fd->type]);
  return (-1);
 } else {
  if (debugflags & 0x40) {
   device_printf(fd->dev,
       "autoselected %d KB medium\n",
       fd->ft->size / 2);
   fdprinttype(fd->ft);
  }
  return (0);
 }
}
