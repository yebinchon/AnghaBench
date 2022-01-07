
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct mrsas_softc {int target_reset_outstanding; struct mrsas_mpt_cmd** target_reset_pool; } ;
struct mrsas_mpt_cmd {TYPE_3__* ccb_ptr; int cm_callout; struct mrsas_softc* sc; } ;
struct TYPE_5__ {size_t target_id; } ;
struct TYPE_4__ {scalar_t__ bus_id; } ;
struct TYPE_6__ {TYPE_2__ ccb_h; TYPE_1__ cpi; } ;


 int MRSAS_MAX_PD ;
 int SBT_1S ;
 int callout_reset (int *,int,void (*) (void*),struct mrsas_mpt_cmd*) ;
 int callout_reset_sbt (int *,int,int ,void (*) (void*),struct mrsas_mpt_cmd*,int ) ;
 int hz ;
 int mrsas_atomic_inc (int *) ;
 int printf (char*) ;

__attribute__((used)) static void
mrsas_scsiio_timeout(void *data)
{
 struct mrsas_mpt_cmd *cmd;
 struct mrsas_softc *sc;
 u_int32_t target_id;

 if (!data)
  return;

 cmd = (struct mrsas_mpt_cmd *)data;
 sc = cmd->sc;

 if (cmd->ccb_ptr == ((void*)0)) {
  printf("command timeout with NULL ccb\n");
  return;
 }
 callout_reset(&cmd->cm_callout, (180000 * hz) / 1000,
     mrsas_scsiio_timeout, cmd);


 if (cmd->ccb_ptr->cpi.bus_id == 0)
  target_id = cmd->ccb_ptr->ccb_h.target_id;
 else
  target_id = (cmd->ccb_ptr->ccb_h.target_id + (MRSAS_MAX_PD - 1));


 if (sc->target_reset_pool[target_id] == ((void*)0)) {
  sc->target_reset_pool[target_id] = cmd;
  mrsas_atomic_inc(&sc->target_reset_outstanding);
 }

 return;
}
