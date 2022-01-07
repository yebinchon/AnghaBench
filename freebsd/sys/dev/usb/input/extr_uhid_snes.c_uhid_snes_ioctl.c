
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_long ;
struct usb_gen_descriptor {int ugd_report_type; int ugd_maxlen; int * ugd_data; int ugd_actlen; } ;
struct usb_fifo {int dummy; } ;
struct uhid_snes_softc {int sc_fid; int sc_fsize; int sc_oid; int sc_osize; int sc_iid; int sc_isize; int sc_mutex; int sc_fflags; int sc_repdesc_ptr; int sc_repdesc_size; } ;


 int EINVAL ;
 int EPERM ;
 int FREAD ;
 int FWRITE ;

 int UHID_FLAG_IMMED ;







 int copyin (int *,int *,int) ;
 int copyout (int ,int *,int ) ;
 int imin (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uhid_get_report (struct uhid_snes_softc*,int,int ,int *,int *,int ) ;
 int uhid_set_report (struct uhid_snes_softc*,int,int ,int *,int *,int ) ;
 struct uhid_snes_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static int
uhid_snes_ioctl(struct usb_fifo *fifo, u_long cmd, void *data, int fflags)
{
 struct uhid_snes_softc *sc = usb_fifo_softc(fifo);
 struct usb_gen_descriptor *ugd;
 uint32_t size;
 int error = 0;
 uint8_t id;

 switch (cmd) {
 case 131:
  ugd = data;
  if (sc->sc_repdesc_size > ugd->ugd_maxlen) {
   size = ugd->ugd_maxlen;
  } else {
   size = sc->sc_repdesc_size;
  }

  ugd->ugd_actlen = size;
  if (ugd->ugd_data == ((void*)0))
   break;
  error = copyout(sc->sc_repdesc_ptr, ugd->ugd_data, size);
  break;

 case 129:
  if (!(fflags & FREAD)) {
   error = EPERM;
   break;
  }

  if (*(int *)data) {

   error = uhid_get_report(sc, 134,
       sc->sc_iid, ((void*)0), ((void*)0), sc->sc_isize);
   if (error) {
    break;
   }
   mtx_lock(&sc->sc_mutex);
   sc->sc_fflags |= UHID_FLAG_IMMED;
   mtx_unlock(&sc->sc_mutex);
  } else {
   mtx_lock(&sc->sc_mutex);
   sc->sc_fflags &= ~UHID_FLAG_IMMED;
   mtx_unlock(&sc->sc_mutex);
  }
  break;

 case 132:
  if (!(fflags & FREAD)) {
   error = EPERM;
   break;
  }
  ugd = data;
  switch (ugd->ugd_report_type) {
  case 134:
   size = sc->sc_isize;
   id = sc->sc_iid;
   break;
  case 133:
   size = sc->sc_osize;
   id = sc->sc_oid;
   break;
  case 135:
   size = sc->sc_fsize;
   id = sc->sc_fid;
   break;
  default:
   return (EINVAL);
  }
  if (id != 0)
   copyin(ugd->ugd_data, &id, 1);
  error = uhid_get_report(sc, ugd->ugd_report_type, id,
      ((void*)0), ugd->ugd_data, imin(ugd->ugd_maxlen, size));
  break;

 case 128:
  if (!(fflags & FWRITE)) {
   error = EPERM;
   break;
  }
  ugd = data;
  switch (ugd->ugd_report_type) {
  case 134:
   size = sc->sc_isize;
   id = sc->sc_iid;
   break;
  case 133:
   size = sc->sc_osize;
   id = sc->sc_oid;
   break;
  case 135:
   size = sc->sc_fsize;
   id = sc->sc_fid;
   break;
  default:
   return (EINVAL);
  }
  if (id != 0)
   copyin(ugd->ugd_data, &id, 1);
  error = uhid_set_report(sc, ugd->ugd_report_type, id,
      ((void*)0), ugd->ugd_data, imin(ugd->ugd_maxlen, size));
  break;

 case 130:

  *(int *)data = 0;
  break;

 default:
  error = EINVAL;
  break;
 }
 return (error);
}
