
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdevsw {int d_devs; } ;


 int LIST_EMPTY (int *) ;
 int PRIBIO ;
 int dev_lock () ;
 int dev_unlock () ;
 int devmtx ;
 int hz ;
 int msleep (int *,int *,int ,char*,int) ;

void
destroy_dev_drain(struct cdevsw *csw)
{

 dev_lock();
 while (!LIST_EMPTY(&csw->d_devs)) {
  msleep(&csw->d_devs, &devmtx, PRIBIO, "devscd", hz/10);
 }
 dev_unlock();
}
