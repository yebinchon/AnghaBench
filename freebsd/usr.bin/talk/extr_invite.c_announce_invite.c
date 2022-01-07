
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t answer; int id_num; } ;
typedef TYPE_1__ CTL_RESPONSE ;


 int ANNOUNCE ;
 int LEAVE_INVITE ;
 size_t NANSWERS ;
 size_t SUCCESS ;
 int * answers ;
 int ctl_transact (int ,int ,int ,TYPE_1__*) ;
 char* current_state ;
 int his_machine_addr ;
 int local_id ;
 int message (int ) ;
 int msg ;
 int my_machine_addr ;
 int quit () ;
 int remote_id ;

void
announce_invite(void)
{
 CTL_RESPONSE response;

 current_state = "Trying to connect to your party's talk daemon";
 ctl_transact(his_machine_addr, msg, ANNOUNCE, &response);
 remote_id = response.id_num;
 if (response.answer != SUCCESS) {
  if (response.answer < NANSWERS)
   message(answers[response.answer]);
  quit();
 }

 current_state = "Trying to connect to local talk daemon";
 ctl_transact(my_machine_addr, msg, LEAVE_INVITE, &response);
 local_id = response.id_num;
}
