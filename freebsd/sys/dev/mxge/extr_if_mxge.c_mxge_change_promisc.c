
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
typedef TYPE_1__ mxge_softc_t ;
typedef int mxge_cmd_t ;


 int MXGEFW_DISABLE_PROMISC ;
 int MXGEFW_ENABLE_PROMISC ;
 int device_printf (int ,char*) ;
 scalar_t__ mxge_always_promisc ;
 int mxge_send_cmd (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void
mxge_change_promisc(mxge_softc_t *sc, int promisc)
{
 mxge_cmd_t cmd;
 int status;

 if (mxge_always_promisc)
  promisc = 1;

 if (promisc)
  status = mxge_send_cmd(sc, MXGEFW_ENABLE_PROMISC,
           &cmd);
 else
  status = mxge_send_cmd(sc, MXGEFW_DISABLE_PROMISC,
           &cmd);

 if (status) {
  device_printf(sc->dev, "Failed to set promisc mode\n");
 }
}
