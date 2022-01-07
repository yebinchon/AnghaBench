
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sy_call_t ;
struct TYPE_4__ {int * sy_call; } ;
struct TYPE_3__ {int * sy_call; } ;


 int EVENTHANDLER_DEREGISTER (int ,int ) ;
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
 int filemon_exec_tag ;
 int filemon_exit_tag ;
 int filemon_fork_tag ;
 TYPE_2__* freebsd32_sysent ;
 int process_exec ;
 int process_exit ;
 int process_fork ;
 scalar_t__ sys_chdir ;
 scalar_t__ sys_link ;
 scalar_t__ sys_linkat ;
 scalar_t__ sys_open ;
 scalar_t__ sys_openat ;
 scalar_t__ sys_rename ;
 scalar_t__ sys_symlink ;
 scalar_t__ sys_unlink ;
 TYPE_1__* sysent ;

__attribute__((used)) static void
filemon_wrapper_deinstall(void)
{

 sysent[SYS_chdir].sy_call = (sy_call_t *)sys_chdir;
 sysent[SYS_open].sy_call = (sy_call_t *)sys_open;
 sysent[SYS_openat].sy_call = (sy_call_t *)sys_openat;
 sysent[SYS_rename].sy_call = (sy_call_t *)sys_rename;
 sysent[SYS_unlink].sy_call = (sy_call_t *)sys_unlink;
 sysent[SYS_link].sy_call = (sy_call_t *)sys_link;
 sysent[SYS_symlink].sy_call = (sy_call_t *)sys_symlink;
 sysent[SYS_linkat].sy_call = (sy_call_t *)sys_linkat;
 EVENTHANDLER_DEREGISTER(process_exec, filemon_exec_tag);
 EVENTHANDLER_DEREGISTER(process_exit, filemon_exit_tag);
 EVENTHANDLER_DEREGISTER(process_fork, filemon_fork_tag);
}
