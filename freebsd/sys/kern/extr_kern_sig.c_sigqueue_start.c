
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ksiginfo_t ;


 int CTL_P1003_1B_REALTIME_SIGNALS ;
 int CTL_P1003_1B_RTSIG_MAX ;
 int CTL_P1003_1B_SIGQUEUE_MAX ;
 scalar_t__ SIGRTMAX ;
 scalar_t__ SIGRTMIN ;
 int UMA_ALIGN_PTR ;
 scalar_t__ _POSIX_REALTIME_SIGNALS ;
 int ksiginfo_zone ;
 scalar_t__ max_pending_per_proc ;
 int p31b_setcfg (int ,scalar_t__) ;
 int preallocate_siginfo ;
 int uma_prealloc (int ,int ) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void
sigqueue_start(void)
{
 ksiginfo_zone = uma_zcreate("ksiginfo", sizeof(ksiginfo_t),
  ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
 uma_prealloc(ksiginfo_zone, preallocate_siginfo);
 p31b_setcfg(CTL_P1003_1B_REALTIME_SIGNALS, _POSIX_REALTIME_SIGNALS);
 p31b_setcfg(CTL_P1003_1B_RTSIG_MAX, SIGRTMAX - SIGRTMIN + 1);
 p31b_setcfg(CTL_P1003_1B_SIGQUEUE_MAX, max_pending_per_proc);
}
