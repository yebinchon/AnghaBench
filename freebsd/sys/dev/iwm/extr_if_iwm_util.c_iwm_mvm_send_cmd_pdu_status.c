
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct iwm_softc {int dummy; } ;
struct iwm_host_cmd {int data; int len; int id; } ;


 int iwm_mvm_send_cmd_status (struct iwm_softc*,struct iwm_host_cmd*,int *) ;

int
iwm_mvm_send_cmd_pdu_status(struct iwm_softc *sc, uint32_t id,
 uint16_t len, const void *data, uint32_t *status)
{
 struct iwm_host_cmd cmd = {
  .id = id,
  .len = { len, },
  .data = { data, },
 };

 return iwm_mvm_send_cmd_status(sc, &cmd, status);
}
