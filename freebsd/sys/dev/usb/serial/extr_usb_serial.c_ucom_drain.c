
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_super_softc {scalar_t__ sc_refs; } ;


 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;
 int ucom_mtx ;
 int usb_pause_mtx (int *,int ) ;

void
ucom_drain(struct ucom_super_softc *ssc)
{
 mtx_lock(&ucom_mtx);
 while (ssc->sc_refs > 0) {
  printf("ucom: Waiting for a TTY device to close.\n");
  usb_pause_mtx(&ucom_mtx, hz);
 }
 mtx_unlock(&ucom_mtx);
}
