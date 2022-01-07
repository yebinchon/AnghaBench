
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;
 scalar_t__ ucom_close_refs ;
 int ucom_mtx ;
 int usb_pause_mtx (int *,int ) ;

void
ucom_drain_all(void *arg)
{
 mtx_lock(&ucom_mtx);
 while (ucom_close_refs > 0) {
  printf("ucom: Waiting for all detached TTY "
      "devices to have open fds closed.\n");
  usb_pause_mtx(&ucom_mtx, hz);
 }
 mtx_unlock(&ucom_mtx);
}
