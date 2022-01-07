
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;


 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int pause (char*,int) ;

void
usb_pause_mtx(struct mtx *mtx, int timo)
{
 if (mtx != ((void*)0))
  mtx_unlock(mtx);






 pause("USBWAIT", timo + 1);

 if (mtx != ((void*)0))
  mtx_lock(mtx);
}
