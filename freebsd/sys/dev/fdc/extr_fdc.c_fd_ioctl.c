
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
struct thread {int dummy; } ;
struct g_provider {TYPE_1__* geom; } ;
struct fdc_status {int status; } ;
struct fdc_readid {int cyl; int head; } ;
struct fd_type {int sectrac; } ;
struct fd_formb {int format_version; } ;
struct fd_data {size_t type; int options; TYPE_2__* fdc; int flags; struct fd_type* ft; struct fd_type fts; } ;
typedef enum fd_drivetype { ____Placeholder_fd_drivetype } fd_drivetype ;
struct TYPE_4__ {int flags; int fdc_mtx; int status; int fdc_errs; } ;
struct TYPE_3__ {struct fd_data* softc; } ;


 int BIO_FMT ;
 int BIO_RDID ;
 int EINVAL ;
 int ENOIOCTL ;
 int EPERM ;
 int FDC_STAT_VALID ;


 int FD_FORMAT_VERSION ;




 int FD_NEWDISK ;





 int FWRITE ;
 int PRIV_DRIVER ;
 int debugflags ;
 struct fd_type** fd_native_types ;
 int fdmisccmd (struct fd_data*,int ,void*) ;
 int fdprinttype (struct fd_type*) ;
 int fdsettype (struct fd_data*,struct fd_type*) ;
 int memcpy (int ,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int) ;
 int priv_check (struct thread*,int ) ;

__attribute__((used)) static int
fd_ioctl(struct g_provider *pp, u_long cmd, void *data, int fflag, struct thread *td)
{
 struct fd_data *fd;
 struct fdc_status *fsp;
 struct fdc_readid *rid;
 int error;

 fd = pp->geom->softc;

 switch (cmd) {
 case 133:
  *(struct fd_type *)data = *fd->ft;
  return (0);

 case 130:





  fd->fts = *(struct fd_type *)data;
  if (fd->fts.sectrac) {

   fdsettype(fd, &fd->fts);
  } else {
   fdsettype(fd, fd_native_types[fd->type]);
  }
  if (debugflags & 0x40)
   fdprinttype(fd->ft);
  return (0);

 case 135:
  *(int *)data = fd->options;
  return (0);

 case 131:
  fd->options = *(int *)data;
  return (0);

 case 138:
  error = priv_check(td, PRIV_DRIVER);
  if (error)
   return (error);
  fd->fdc->fdc_errs = 0;
  return (0);

 case 134:
  fsp = (struct fdc_status *)data;
  if ((fd->fdc->flags & FDC_STAT_VALID) == 0)
   return (EINVAL);
  memcpy(fsp->status, fd->fdc->status, 7 * sizeof(u_int));
  return (0);

 case 136:
  *(enum fd_drivetype *)data = fd->type;
  return (0);

 case 137:
  if (!(fflag & FWRITE))
   return (EPERM);
  if (((struct fd_formb *)data)->format_version !=
      FD_FORMAT_VERSION)
   return (EINVAL);
  error = fdmisccmd(fd, BIO_FMT, data);
  mtx_lock(&fd->fdc->fdc_mtx);
  fd->flags |= FD_NEWDISK;
  mtx_unlock(&fd->fdc->fdc_mtx);
  break;

 case 132:
  rid = (struct fdc_readid *)data;
  if (rid->cyl > 85 || rid->head > 1)
   return (EINVAL);
  error = fdmisccmd(fd, BIO_RDID, data);
  break;

 case 128:
 case 129:

  error = 0;
  break;

 default:
  if (debugflags & 0x80)
   printf("Unknown ioctl %lx\n", cmd);
  error = ENOIOCTL;
  break;
 }
 return (error);
}
