
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_pcb; } ;
struct segment_descriptor {int dummy; } ;
struct l_user_desc {int entry_number; } ;
typedef int a ;
struct TYPE_2__ {int pcb_gs; struct segment_descriptor pcb_gsd; } ;


 int GSEL (int ,int ) ;
 int GUGS_SEL ;
 int LINUX_LDT_entry_a (struct l_user_desc*) ;
 int LINUX_LDT_entry_b (struct l_user_desc*) ;
 int SEL_UPL ;
 int copyin (void*,struct l_user_desc*,int) ;
 int copyout (struct l_user_desc*,void*,int) ;
 int linux_msg (struct thread*,char*) ;
 int memcpy (struct segment_descriptor*,int**,int) ;

int
linux_set_cloned_tls(struct thread *td, void *desc)
{
 struct segment_descriptor sd;
 struct l_user_desc info;
 int idx, error;
 int a[2];

 error = copyin(desc, &info, sizeof(struct l_user_desc));
 if (error) {
  linux_msg(td, "set_cloned_tls copyin failed!");
 } else {
  idx = info.entry_number;





  if (idx != 6 && idx != 3) {
   linux_msg(td, "set_cloned_tls resetting idx!");
   idx = 3;
  }


  if (idx == 6) {

   info.entry_number = 3;
   error = copyout(&info, desc, sizeof(struct l_user_desc));
   if (error)
    linux_msg(td, "set_cloned_tls copyout failed!");
  }

  a[0] = LINUX_LDT_entry_a(&info);
  a[1] = LINUX_LDT_entry_b(&info);

  memcpy(&sd, &a, sizeof(a));

  td->td_pcb->pcb_gsd = sd;
  td->td_pcb->pcb_gs = GSEL(GUGS_SEL, SEL_UPL);
 }

 return (error);
}
