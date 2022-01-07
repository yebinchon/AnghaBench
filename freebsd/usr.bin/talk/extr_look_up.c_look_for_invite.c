
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int id_num; } ;
struct TYPE_6__ {int answer; int id_num; } ;
typedef TYPE_1__ CTL_RESPONSE ;


 int LOOK_UP ;

 int ctl_transact (int ,TYPE_2__,int ,TYPE_1__*) ;
 char* current_state ;
 int his_machine_addr ;
 int htonl (int ) ;
 TYPE_2__ msg ;

int
look_for_invite(CTL_RESPONSE *rp)
{
 current_state = "Checking for invitation on caller's machine";
 ctl_transact(his_machine_addr, msg, LOOK_UP, rp);

 switch (rp->answer) {

 case 128:
  msg.id_num = htonl(rp->id_num);
  return (1);

 default:

  return (0);
 }
}
