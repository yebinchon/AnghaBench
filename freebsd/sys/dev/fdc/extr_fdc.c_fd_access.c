
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_provider {int flags; int acr; int acw; int ace; int sectorsize; int stripesize; int mediasize; TYPE_1__* geom; } ;
struct fdc_data {int fdc_mtx; } ;
struct fd_data {int options; int flags; int sectorsize; TYPE_2__* ft; int dev; struct fdc_data* fdc; } ;
struct TYPE_4__ {int heads; int sectrac; int tracks; } ;
struct TYPE_3__ {struct fd_data* softc; } ;


 int BIO_PROBE ;
 int ENXIO ;
 int EROFS ;
 int FDOPT_NOERRLOG ;
 int FDOPT_NOERROR ;
 int FDOPT_NORETRY ;
 int FD_EMPTY ;
 int FD_NEWDISK ;
 int FD_NO_CHLINE ;
 int FD_WP ;
 int G_PF_WITHER ;
 int device_busy (int ) ;
 int device_get_flags (int ) ;
 int device_unbusy (int ) ;
 scalar_t__ fdautoselect (struct fd_data*) ;
 scalar_t__ fdmisccmd (struct fd_data*,int ,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
fd_access(struct g_provider *pp, int r, int w, int e)
{
 struct fd_data *fd;
 struct fdc_data *fdc;
 int ar, aw, ae;
 int busy;

 fd = pp->geom->softc;
 fdc = fd->fdc;





 if (pp->flags & G_PF_WITHER)
  return (0);

 ar = r + pp->acr;
 aw = w + pp->acw;
 ae = e + pp->ace;

 if (ar == 0 && aw == 0 && ae == 0) {
  fd->options &= ~(FDOPT_NORETRY | FDOPT_NOERRLOG | FDOPT_NOERROR);
  device_unbusy(fd->dev);
  return (0);
 }

 busy = 0;
 if (pp->acr == 0 && pp->acw == 0 && pp->ace == 0) {
  if (fdmisccmd(fd, BIO_PROBE, ((void*)0)))
   return (ENXIO);
  if (fd->flags & FD_EMPTY)
   return (ENXIO);
  if (fd->flags & FD_NEWDISK) {
   if (fdautoselect(fd) != 0 &&
       (device_get_flags(fd->dev) & FD_NO_CHLINE)) {
    mtx_lock(&fdc->fdc_mtx);
    fd->flags |= FD_EMPTY;
    mtx_unlock(&fdc->fdc_mtx);
    return (ENXIO);
   }
   mtx_lock(&fdc->fdc_mtx);
   fd->flags &= ~FD_NEWDISK;
   mtx_unlock(&fdc->fdc_mtx);
  }
  device_busy(fd->dev);
  busy = 1;
 }

 if (w > 0 && (fd->flags & FD_WP)) {
  if (busy)
   device_unbusy(fd->dev);
  return (EROFS);
 }

 pp->sectorsize = fd->sectorsize;
 pp->stripesize = fd->ft->heads * fd->ft->sectrac * fd->sectorsize;
 pp->mediasize = pp->stripesize * fd->ft->tracks;
 return (0);
}
