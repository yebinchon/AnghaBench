
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysent {int dummy; } ;
struct syscall_helper_data {scalar_t__ registered; int old_sysent; int syscall_no; } ;


 int kern_syscall_deregister (struct sysent*,int ,int *) ;

int
kern_syscall_helper_unregister(struct sysent *sysents,
    struct syscall_helper_data *sd)
{
 struct syscall_helper_data *sd1;

 for (sd1 = sd; sd1->registered != 0; sd1++) {
  kern_syscall_deregister(sysents, sd1->syscall_no,
      &sd1->old_sysent);
  sd1->registered = 0;
 }
 return (0);
}
