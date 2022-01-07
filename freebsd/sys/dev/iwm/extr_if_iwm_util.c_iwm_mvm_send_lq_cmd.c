
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;
struct iwm_lq_cmd {scalar_t__ sta_id; } ;
struct iwm_host_cmd {int data; int flags; int len; int id; } ;
typedef int boolean_t ;


 int EINVAL ;
 int IWM_CMD_ASYNC ;
 int IWM_LQ_CMD ;
 scalar_t__ IWM_MVM_STATION_COUNT ;
 int iwm_send_cmd (struct iwm_softc*,struct iwm_host_cmd*) ;

int
iwm_mvm_send_lq_cmd(struct iwm_softc *sc, struct iwm_lq_cmd *lq, boolean_t init)
{
 struct iwm_host_cmd cmd = {
  .id = IWM_LQ_CMD,
  .len = { sizeof(struct iwm_lq_cmd), },
  .flags = init ? 0 : IWM_CMD_ASYNC,
  .data = { lq, },
 };

 if (lq->sta_id == IWM_MVM_STATION_COUNT)
  return EINVAL;

 return iwm_send_cmd(sc, &cmd);
}
