
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int state; TYPE_2__* staticcmd; int used_commands; int free_cmd_list; } ;
typedef TYPE_1__ ips_softc_t ;
struct TYPE_8__ {int command_buffer; } ;
typedef TYPE_2__ ips_command_t ;


 int EAGAIN ;
 int EBUSY ;
 int EIO ;
 int IPS_COMMAND_LEN ;
 int IPS_OFFLINE ;
 int IPS_STATIC_BUSY ;
 unsigned long IPS_STATIC_FLAG ;
 int IPS_TIMEOUT ;
 TYPE_2__* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int bzero (int ,int ) ;
 int clear_ips_command (TYPE_2__*) ;
 int next ;

int ips_get_free_cmd(ips_softc_t *sc, ips_command_t **cmd, unsigned long flags)
{
 ips_command_t *command;

 if(sc->state & IPS_OFFLINE){
  return EIO;
 }
 if ((flags & IPS_STATIC_FLAG) == 0) {
  command = SLIST_FIRST(&sc->free_cmd_list);
  if(!command || (sc->state & IPS_TIMEOUT)){
   return EBUSY;
  }
  SLIST_REMOVE_HEAD(&sc->free_cmd_list, next);
  (sc->used_commands)++;
 } else {
  if (sc->state & IPS_STATIC_BUSY)
   return EAGAIN;
  command = sc->staticcmd;
  sc->state |= IPS_STATIC_BUSY;
 }
 clear_ips_command(command);
 bzero(command->command_buffer, IPS_COMMAND_LEN);
 *cmd = command;
 return 0;
}
