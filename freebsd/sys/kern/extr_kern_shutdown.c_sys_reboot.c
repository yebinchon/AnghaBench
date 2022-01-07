
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_ucred; } ;
struct reboot_args {int opt; } ;


 int PRIV_REBOOT ;
 int RB_REROOT ;
 int kern_reboot (int) ;
 int kern_reroot () ;
 int mac_system_check_reboot (int ,int) ;
 int priv_check (struct thread*,int ) ;

int
sys_reboot(struct thread *td, struct reboot_args *uap)
{
 int error;

 error = 0;



 if (error == 0)
  error = priv_check(td, PRIV_REBOOT);
 if (error == 0) {
  if (uap->opt & RB_REROOT)
   error = kern_reroot();
  else
   kern_reboot(uap->opt);
 }
 return (error);
}
