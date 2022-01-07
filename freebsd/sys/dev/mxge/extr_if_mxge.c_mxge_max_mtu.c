
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mxge_softc_t ;
struct TYPE_3__ {scalar_t__ data0; } ;
typedef TYPE_1__ mxge_cmd_t ;


 scalar_t__ MJUMPAGESIZE ;
 int MXGEFW_CMD_ALWAYS_USE_N_BIG_BUFFERS ;
 scalar_t__ MXGEFW_MAX_MTU ;
 scalar_t__ MXGEFW_PAD ;
 int mxge_send_cmd (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int
mxge_max_mtu(mxge_softc_t *sc)
{
 mxge_cmd_t cmd;
 int status;

 if (MJUMPAGESIZE - MXGEFW_PAD > MXGEFW_MAX_MTU)
  return MXGEFW_MAX_MTU - MXGEFW_PAD;



 cmd.data0 = 0;
 status = mxge_send_cmd(sc, MXGEFW_CMD_ALWAYS_USE_N_BIG_BUFFERS,
          &cmd);
 if (status == 0)
  return MXGEFW_MAX_MTU - MXGEFW_PAD;


 return MJUMPAGESIZE - MXGEFW_PAD;
}
