
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pause; int dev; } ;
typedef TYPE_1__ mxge_softc_t ;
typedef int mxge_cmd_t ;


 int ENXIO ;
 int MXGEFW_DISABLE_FLOW_CONTROL ;
 int MXGEFW_ENABLE_FLOW_CONTROL ;
 int device_printf (int ,char*) ;
 int mxge_send_cmd (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int
mxge_change_pause(mxge_softc_t *sc, int pause)
{
 mxge_cmd_t cmd;
 int status;

 if (pause)
  status = mxge_send_cmd(sc, MXGEFW_ENABLE_FLOW_CONTROL,
           &cmd);
 else
  status = mxge_send_cmd(sc, MXGEFW_DISABLE_FLOW_CONTROL,
           &cmd);

 if (status) {
  device_printf(sc->dev, "Failed to set flow control mode\n");
  return ENXIO;
 }
 sc->pause = pause;
 return 0;
}
