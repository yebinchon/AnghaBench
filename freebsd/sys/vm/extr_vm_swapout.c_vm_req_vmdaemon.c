
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ticks ;
 int vm_daemon_mtx ;
 int vm_daemon_needed ;
 int vm_pageout_req_swapout ;
 int wakeup (int *) ;

__attribute__((used)) static void
vm_req_vmdaemon(int req)
{
 static int lastrun = 0;

 mtx_lock(&vm_daemon_mtx);
 vm_pageout_req_swapout |= req;
 if ((ticks > (lastrun + hz)) || (ticks < lastrun)) {
  wakeup(&vm_daemon_needed);
  lastrun = ticks;
 }
 mtx_unlock(&vm_daemon_mtx);
}
