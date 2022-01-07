
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int timeout; int command_phys_addr; TYPE_3__* sc; int (* callback ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ips_command_t ;
struct TYPE_7__ {int state; } ;


 int EINVAL ;
 int IPS_OFFLINE ;
 int MORPHEUS_REG_IQPR ;
 int ips_set_error (TYPE_1__*,int ) ;
 int ips_write_4 (TYPE_3__*,int ,int ) ;
 int stub1 (TYPE_1__*) ;

void ips_issue_morpheus_cmd(ips_command_t *command)
{

 if(command->sc->state & IPS_OFFLINE){
  ips_set_error(command, EINVAL);
  command->callback(command);
  return;
 }
 command->timeout = 10;
 ips_write_4(command->sc, MORPHEUS_REG_IQPR, command->command_phys_addr);
}
