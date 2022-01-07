
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fdc_data {int fdc_mtx; struct fd_data* fd; } ;
struct fd_data {int fdsu; int type; struct fdc_data* fdc; int toffhandle; scalar_t__ options; int track; int flags; int dev; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;



 int FDT_288M_1 ;


 int FDT_NONE ;
 int FD_EMPTY ;
 int FD_NO_PROBE ;
 int FD_NO_TRACK ;
 int FD_TYPEMASK ;
 int NE7CMD_RECAL ;
 int NE7CMD_SEEK ;
 int NE7_ST0_EC ;
 int NE7_ST3_T0 ;
 int RTC_FDISKETTE ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_flags (int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 int fd_motor (struct fd_data*,int) ;
 int * fd_native_types ;
 int fd_select (struct fd_data*) ;
 scalar_t__ fdc_cmd (struct fdc_data*,int,int ,int,int,...) ;
 int fdc_get_fdtype (int ) ;
 int fdc_get_fdunit (int ) ;
 int fdc_reset (struct fdc_data*) ;
 scalar_t__ fdc_sense_drive (struct fdc_data*,int*) ;
 scalar_t__ fdc_sense_int (struct fdc_data*,int*,int *) ;
 int fdsettype (struct fd_data*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rtcin (int ) ;

__attribute__((used)) static int
fd_probe(device_t dev)
{
 int unit;
 int i;
 u_int st0, st3;
 struct fd_data *fd;
 struct fdc_data *fdc;
 int fdsu;
 int flags, type;

 fdsu = fdc_get_fdunit(dev);
 fd = device_get_softc(dev);
 fdc = device_get_softc(device_get_parent(dev));
 flags = device_get_flags(dev);

 fd->dev = dev;
 fd->fdc = fdc;
 fd->fdsu = fdsu;
 unit = device_get_unit(dev);


 type = flags & FD_TYPEMASK;
 if (type == FDT_NONE && (type = fdc_get_fdtype(dev)) != FDT_NONE) {
  fd->type = type;
  goto done;
 } else {

  fd->flags = FD_EMPTY;
  fd->type = type;
 }


 if (fd->type == FDT_NONE && (unit == 0 || unit == 1)) {

  if (unit == 0)
   fd->type = (rtcin(RTC_FDISKETTE) & 0xf0) >> 4;
  else
   fd->type = rtcin(RTC_FDISKETTE) & 0x0f;
  if (fd->type == FDT_288M_1)
   fd->type = 130;
 }


 if (fd->type == FDT_NONE)
  return (ENXIO);

 mtx_lock(&fdc->fdc_mtx);


 fd_select(fd);
 fd_motor(fd, 1);
 fdc->fd = fd;
 fdc_reset(fdc);
 DELAY(1000000);

 if ((flags & FD_NO_PROBE) == 0) {

  if ((fdc_sense_drive(fdc, &st3) == 0) &&
      (st3 & NE7_ST3_T0)) {

   if (fdc_cmd(fdc, 3, NE7CMD_SEEK, fdsu, 10, 0) == 0) {

    DELAY(300000);

    fdc_sense_int(fdc, ((void*)0), ((void*)0));
   }
  }

  for (i = 0; i < 2; i++) {







   if (fdc_cmd(fdc, 2, NE7CMD_RECAL, fdsu, 0) == 0) {

    DELAY(i == 0 ? 1000000 : 300000);


    if (fdc_sense_int(fdc, &st0, ((void*)0)) == 0 &&
        (st0 & NE7_ST0_EC) == 0)
     break;
   }
  }
 }

 fd_motor(fd, 0);
 fdc->fd = ((void*)0);
 mtx_unlock(&fdc->fdc_mtx);

 if ((flags & FD_NO_PROBE) == 0 &&
     (st0 & NE7_ST0_EC) != 0)
  return (ENXIO);

done:

 switch (fd->type) {
 case 132:
  device_set_desc(dev, "1200-KB 5.25\" drive");
  break;
 case 131:
  device_set_desc(dev, "1440-KB 3.5\" drive");
  break;
 case 130:
  device_set_desc(dev, "2880-KB 3.5\" drive (in 1440-KB mode)");
  break;
 case 129:
  device_set_desc(dev, "360-KB 5.25\" drive");
  break;
 case 128:
  device_set_desc(dev, "720-KB 3.5\" drive");
  break;
 default:
  return (ENXIO);
 }
 fd->track = FD_NO_TRACK;
 fd->fdc = fdc;
 fd->fdsu = fdsu;
 fd->options = 0;
 callout_init_mtx(&fd->toffhandle, &fd->fdc->fdc_mtx, 0);


 fdsettype(fd, fd_native_types[fd->type]);
 return (0);
}
