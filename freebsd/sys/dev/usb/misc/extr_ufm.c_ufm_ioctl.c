
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct usb_fifo {int dummy; } ;
struct ufm_softc {int dummy; } ;


 int EACCES ;
 int ENOTTY ;





 int FREAD ;
 int FWRITE ;
 int ufm_get_freq (struct ufm_softc*,void*) ;
 int ufm_get_stat (struct ufm_softc*,void*) ;
 int ufm_set_freq (struct ufm_softc*,void*) ;
 int ufm_start (struct ufm_softc*,void*) ;
 int ufm_stop (struct ufm_softc*,void*) ;
 struct ufm_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static int
ufm_ioctl(struct usb_fifo *fifo, u_long cmd, void *addr,
    int fflags)
{
 struct ufm_softc *sc = usb_fifo_softc(fifo);
 int error = 0;

 if ((fflags & (FWRITE | FREAD)) != (FWRITE | FREAD)) {
  return (EACCES);
 }

 switch (cmd) {
 case 130:
  error = ufm_set_freq(sc, addr);
  break;
 case 132:
  error = ufm_get_freq(sc, addr);
  break;
 case 129:
  error = ufm_start(sc, addr);
  break;
 case 128:
  error = ufm_stop(sc, addr);
  break;
 case 131:
  error = ufm_get_stat(sc, addr);
  break;
 default:
  error = ENOTTY;
  break;
 }
 return (error);
}
