
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFLDSIZ ;
 int DFLSSIZ ;
 int HZ ;
 int HZ_VM ;
 scalar_t__ INT_MAX ;
 int MAXDSIZ ;
 int MAXSSIZ ;
 int MAXTSIZ ;
 int MSGBUF_SIZE ;
 scalar_t__ NGROUPS_MAX ;
 int PID_MAX ;
 int SBT_1S ;
 int SGROWSIZ ;
 int TUNABLE_INT_FETCH (char*,...) ;
 int TUNABLE_LONG_FETCH (char*,int *) ;
 int TUNABLE_ULONG_FETCH (char*,int *) ;
 int VM_BCACHE_SIZE_MAX ;
 scalar_t__ VM_GUEST_NO ;
 int VM_SWZONE_SIZE_MAX ;
 int dfldsiz ;
 int dflssiz ;
 int hz ;
 int kstack_pages ;
 int maxbcache ;
 int maxdsiz ;
 int maxssiz ;
 int maxswzone ;
 int maxtsiz ;
 int msgbufsize ;
 scalar_t__ ngroups_max ;
 int pid_max ;
 int sbttobt (int) ;
 int sgrowsiz ;
 int tick ;
 int tick_bt ;
 int tick_sbt ;
 scalar_t__ ticks ;
 int unmapped_buf_allowed ;
 scalar_t__ vm_guest ;

void
init_param1(void)
{


 TUNABLE_INT_FETCH("kern.kstack_pages", &kstack_pages);

 hz = -1;
 TUNABLE_INT_FETCH("kern.hz", &hz);
 if (hz == -1)
  hz = vm_guest > VM_GUEST_NO ? HZ_VM : HZ;
 tick = 1000000 / hz;
 tick_sbt = SBT_1S / hz;
 tick_bt = sbttobt(tick_sbt);





 ticks = INT_MAX - (hz * 10 * 60);




 TUNABLE_LONG_FETCH("kern.maxswzone", &maxswzone);



 TUNABLE_LONG_FETCH("kern.maxbcache", &maxbcache);
 msgbufsize = MSGBUF_SIZE;
 TUNABLE_INT_FETCH("kern.msgbufsize", &msgbufsize);

 maxtsiz = MAXTSIZ;
 TUNABLE_ULONG_FETCH("kern.maxtsiz", &maxtsiz);
 dfldsiz = DFLDSIZ;
 TUNABLE_ULONG_FETCH("kern.dfldsiz", &dfldsiz);
 maxdsiz = MAXDSIZ;
 TUNABLE_ULONG_FETCH("kern.maxdsiz", &maxdsiz);
 dflssiz = DFLSSIZ;
 TUNABLE_ULONG_FETCH("kern.dflssiz", &dflssiz);
 maxssiz = MAXSSIZ;
 TUNABLE_ULONG_FETCH("kern.maxssiz", &maxssiz);
 sgrowsiz = SGROWSIZ;
 TUNABLE_ULONG_FETCH("kern.sgrowsiz", &sgrowsiz);






 ngroups_max = NGROUPS_MAX;
 TUNABLE_INT_FETCH("kern.ngroups", &ngroups_max);
 if (ngroups_max < NGROUPS_MAX)
  ngroups_max = NGROUPS_MAX;





 TUNABLE_INT_FETCH("kern.pid_max", &pid_max);
 if (pid_max > PID_MAX)
  pid_max = PID_MAX;
 else if (pid_max < 300)
  pid_max = 300;

 TUNABLE_INT_FETCH("vfs.unmapped_buf_allowed", &unmapped_buf_allowed);
}
