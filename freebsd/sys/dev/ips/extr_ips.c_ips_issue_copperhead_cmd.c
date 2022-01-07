
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int timeout; TYPE_3__* sc; int command_phys_addr; int (* callback ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ips_command_t ;
struct TYPE_9__ {int state; } ;


 int COPPER_CMD_START ;
 int COPPER_REG_CCCR ;
 int COPPER_REG_CCSAR ;
 int COPPER_SEM_BIT ;
 int DELAY (int) ;
 int EINVAL ;
 int IPS_OFFLINE ;
 int ips_read_4 (TYPE_3__*,int ) ;
 int ips_set_error (TYPE_1__*,int ) ;
 int ips_write_2 (TYPE_3__*,int ,int ) ;
 int ips_write_4 (TYPE_3__*,int ,int ) ;
 int printf (char*) ;
 int stub1 (TYPE_1__*) ;

void ips_issue_copperhead_cmd(ips_command_t *command)
{
 int i;

 if(command->sc->state & IPS_OFFLINE){
  ips_set_error(command, EINVAL);
  command->callback(command);
  return;
 }
 command->timeout = 10;
 for(i = 0; ips_read_4(command->sc, COPPER_REG_CCCR) & COPPER_SEM_BIT;
     i++ ){
  if( i == 20){
printf("sem bit still set, can't send a command\n");
   return;
  }
  DELAY(500);
 }
 ips_write_4(command->sc, COPPER_REG_CCSAR, command->command_phys_addr);
 ips_write_2(command->sc, COPPER_REG_CCCR, COPPER_CMD_START);
}
