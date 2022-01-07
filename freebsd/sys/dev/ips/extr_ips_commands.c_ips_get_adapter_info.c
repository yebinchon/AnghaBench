
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
typedef TYPE_1__ ips_softc_t ;
typedef int ips_command_t ;


 scalar_t__ COMMAND_ERROR (int *) ;
 int ENXIO ;
 int IPS_STATIC_FLAG ;
 int device_printf (int ,char*) ;
 scalar_t__ ips_get_free_cmd (TYPE_1__*,int **,int ) ;
 int ips_send_adapter_info_cmd (int *) ;

int ips_get_adapter_info(ips_softc_t *sc)
{
 ips_command_t *command;
 int error = 0;

 if (ips_get_free_cmd(sc, &command, IPS_STATIC_FLAG) > 0){
  device_printf(sc->dev, "unable to get adapter configuration\n");
  return ENXIO;
 }
 ips_send_adapter_info_cmd(command);
 if (COMMAND_ERROR(command)){
  error = ENXIO;
 }
 return error;
}
