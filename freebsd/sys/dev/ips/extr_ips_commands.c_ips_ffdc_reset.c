
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
 int ips_send_ffdc_reset_cmd (int *) ;

int ips_ffdc_reset(ips_softc_t *sc)
{
 ips_command_t *command;

 if (ips_get_free_cmd(sc, &command, IPS_STATIC_FLAG)){
  device_printf(sc->dev, "ERROR: unable to get a command! can't send ffdc reset!\n");
 }
 ips_send_ffdc_reset_cmd(command);
 if(COMMAND_ERROR(command)){
  device_printf(sc->dev, "ERROR: ffdc reset command failed!\n");
 }
 return 0;
}
