
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct iwm_softc {int dummy; } ;
struct iwm_host_cmd {int flags; int data; int len; int id; } ;


 int iwm_send_cmd (struct iwm_softc*,struct iwm_host_cmd*) ;

int
iwm_mvm_send_cmd_pdu(struct iwm_softc *sc, uint32_t id,
 uint32_t flags, uint16_t len, const void *data)
{
 struct iwm_host_cmd cmd = {
  .id = id,
  .len = { len, },
  .data = { data, },
  .flags = flags,
 };

 return iwm_send_cmd(sc, &cmd);
}
