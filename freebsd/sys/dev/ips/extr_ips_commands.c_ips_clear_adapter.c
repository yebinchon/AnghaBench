
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
typedef TYPE_1__ ips_softc_t ;
typedef int ips_command_t ;


 scalar_t__ COMMAND_ERROR (int *) ;
 int IPS_STATIC_FLAG ;
 int device_printf (int ,char*) ;
 scalar_t__ ips_get_free_cmd (TYPE_1__*,int **,int ) ;
 int ips_send_config_sync_cmd (int *) ;
 int ips_send_error_table_cmd (int *) ;

int ips_clear_adapter(ips_softc_t *sc)
{
 ips_command_t *command;

 device_printf(sc->dev, "syncing config\n");
 if (ips_get_free_cmd(sc, &command, IPS_STATIC_FLAG)){
  device_printf(sc->dev, "ERROR: unable to get a command! can't sync cache!\n");
  return 1;
 }
 ips_send_config_sync_cmd(command);
 if(COMMAND_ERROR(command)){
  device_printf(sc->dev, "ERROR: cache sync command failed!\n");
  return 1;
 }

 device_printf(sc->dev, "clearing error table\n");
 if(ips_get_free_cmd(sc, &command, IPS_STATIC_FLAG)){
  device_printf(sc->dev, "ERROR: unable to get a command! can't sync cache!\n");
  return 1;
 }
 ips_send_error_table_cmd(command);
 if(COMMAND_ERROR(command)){
  device_printf(sc->dev, "ERROR: etable command failed!\n");
  return 1;
 }

 return 0;
}
