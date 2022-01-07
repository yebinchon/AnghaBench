
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sy_call_t ;
struct TYPE_4__ {int * sy_call; } ;
struct TYPE_3__ {int * sy_call; } ;


 int EVENTHANDLER_PRI_LAST ;
 void* EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 size_t FREEBSD32_SYS_chdir ;
 size_t FREEBSD32_SYS_link ;
 size_t FREEBSD32_SYS_linkat ;
 size_t FREEBSD32_SYS_open ;
 size_t FREEBSD32_SYS_openat ;
 size_t FREEBSD32_SYS_rename ;
 size_t FREEBSD32_SYS_symlink ;
 size_t FREEBSD32_SYS_unlink ;
 size_t SYS_chdir ;
 size_t SYS_link ;
 size_t SYS_linkat ;
 size_t SYS_open ;
 size_t SYS_openat ;
 size_t SYS_rename ;
 size_t SYS_symlink ;
 size_t SYS_unlink ;
 int filemon_event_process_exec ;
 int filemon_event_process_exit ;
 int filemon_event_process_fork ;
 void* filemon_exec_tag ;
 void* filemon_exit_tag ;
 void* filemon_fork_tag ;
 scalar_t__ filemon_wrapper_chdir ;
 scalar_t__ filemon_wrapper_link ;
 scalar_t__ filemon_wrapper_linkat ;
 scalar_t__ filemon_wrapper_open ;
 scalar_t__ filemon_wrapper_openat ;
 scalar_t__ filemon_wrapper_rename ;
 scalar_t__ filemon_wrapper_symlink ;
 scalar_t__ filemon_wrapper_unlink ;
 TYPE_2__* freebsd32_sysent ;
 int process_exec ;
 int process_exit ;
 int process_fork ;
 TYPE_1__* sysent ;

__attribute__((used)) static void
filemon_wrapper_install(void)
{

 sysent[SYS_chdir].sy_call = (sy_call_t *) filemon_wrapper_chdir;
 sysent[SYS_open].sy_call = (sy_call_t *) filemon_wrapper_open;
 sysent[SYS_openat].sy_call = (sy_call_t *) filemon_wrapper_openat;
 sysent[SYS_rename].sy_call = (sy_call_t *) filemon_wrapper_rename;
 sysent[SYS_unlink].sy_call = (sy_call_t *) filemon_wrapper_unlink;
 sysent[SYS_link].sy_call = (sy_call_t *) filemon_wrapper_link;
 sysent[SYS_symlink].sy_call = (sy_call_t *) filemon_wrapper_symlink;
 sysent[SYS_linkat].sy_call = (sy_call_t *) filemon_wrapper_linkat;
 filemon_exec_tag = EVENTHANDLER_REGISTER(process_exec,
     filemon_event_process_exec, ((void*)0), EVENTHANDLER_PRI_LAST);
 filemon_exit_tag = EVENTHANDLER_REGISTER(process_exit,
     filemon_event_process_exit, ((void*)0), EVENTHANDLER_PRI_LAST);
 filemon_fork_tag = EVENTHANDLER_REGISTER(process_fork,
     filemon_event_process_fork, ((void*)0), EVENTHANDLER_PRI_LAST);
}
