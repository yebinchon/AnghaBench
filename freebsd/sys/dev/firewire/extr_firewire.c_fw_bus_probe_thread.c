
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firewire_comm {scalar_t__ status; int wait_lock; } ;


 scalar_t__ FWBUSDETACH ;
 scalar_t__ FWBUSEXPDONE ;
 scalar_t__ FWBUSEXPLORE ;
 int PCATCH ;
 int PWAIT ;
 scalar_t__ firewire_debug ;
 int fw_attach_dev (struct firewire_comm*) ;
 int fw_explore (struct firewire_comm*) ;
 int kproc_exit (int ) ;
 int msleep (void*,int *,int,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;

__attribute__((used)) static void
fw_bus_probe_thread(void *arg)
{
 struct firewire_comm *fc;

 fc = arg;

 mtx_lock(&fc->wait_lock);
 while (fc->status != FWBUSDETACH) {
  if (fc->status == FWBUSEXPLORE) {
   mtx_unlock(&fc->wait_lock);
   fw_explore(fc);
   fc->status = FWBUSEXPDONE;
   if (firewire_debug)
    printf("bus_explore done\n");
   fw_attach_dev(fc);
   mtx_lock(&fc->wait_lock);
  }
  msleep((void *)fc, &fc->wait_lock, PWAIT|PCATCH, "-", 0);
 }
 mtx_unlock(&fc->wait_lock);
 kproc_exit(0);
}
