
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int used_commands; int free_cmd_list; int * staticcmd; int cmd_sema; } ;
typedef TYPE_1__ ips_softc_t ;
typedef int ips_command_t ;


 int IPS_STATIC_BUSY ;
 int SLIST_INSERT_HEAD (int *,int *,int ) ;
 int next ;
 int panic (char*) ;
 scalar_t__ sema_value (int *) ;

void ips_insert_free_cmd(ips_softc_t *sc, ips_command_t *command)
{

 if (sema_value(&sc->cmd_sema) != 0)
  panic("ips: command returned non-zero semaphore");

 if (command != sc->staticcmd) {
  SLIST_INSERT_HEAD(&sc->free_cmd_list, command, next);
  (sc->used_commands)--;
 } else {
  sc->state &= ~IPS_STATIC_BUSY;
 }
}
