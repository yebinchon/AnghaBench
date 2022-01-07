
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {uintptr_t sival_ptr; scalar_t__ sival_int; } ;
struct siginfo32 {uintptr_t si_addr; int si_overrun; int si_timerid; TYPE_1__ si_value; int si_status; int si_uid; int si_pid; int si_code; int si_errno; int si_signo; } ;
struct TYPE_6__ {scalar_t__ sival_int; scalar_t__ sival_ptr; } ;
struct TYPE_7__ {int si_overrun; int si_timerid; TYPE_2__ si_value; scalar_t__ si_addr; int si_status; int si_uid; int si_pid; int si_code; int si_errno; int si_signo; } ;
typedef TYPE_3__ siginfo_t ;


 int bzero (struct siginfo32*,int) ;

__attribute__((used)) static void
elf_convert_siginfo(struct siginfo32 *sid, siginfo_t *sis)
{

 bzero(sid, sizeof(*sid));
 sid->si_signo = sis->si_signo;
 sid->si_errno = sis->si_errno;
 sid->si_code = sis->si_code;
 sid->si_pid = sis->si_pid;
 sid->si_uid = sis->si_uid;
 sid->si_status = sis->si_status;
 sid->si_addr = (uintptr_t)sis->si_addr;

 if (sis->si_value.sival_int == 0)
  sid->si_value.sival_ptr = (uintptr_t)sis->si_value.sival_ptr;
 else

  sid->si_value.sival_int = sis->si_value.sival_int;
 sid->si_timerid = sis->si_timerid;
 sid->si_overrun = sis->si_overrun;
}
