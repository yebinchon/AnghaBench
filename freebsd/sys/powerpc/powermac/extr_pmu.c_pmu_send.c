
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pmu_softc {int dummy; } ;


 int min (int,int) ;
 int* pm_receive_cmd_type ;
 scalar_t__* pm_send_cmd_type ;
 scalar_t__ pmu_intr_state (struct pmu_softc*) ;
 int pmu_read_byte (struct pmu_softc*,int*) ;
 int pmu_read_reg (struct pmu_softc*,int ) ;
 int pmu_send_byte (struct pmu_softc*,int) ;
 int pmu_write_reg (struct pmu_softc*,int ,int) ;
 int vIER ;

__attribute__((used)) static int
pmu_send(void *cookie, int cmd, int length, uint8_t *in_msg, int rlen,
    uint8_t *out_msg)
{
 struct pmu_softc *sc = cookie;
 int i, rcv_len = -1;
 uint8_t out_len, intreg;

 intreg = pmu_read_reg(sc, vIER);
 intreg &= 0x10;
 pmu_write_reg(sc, vIER, intreg);


 do {} while (pmu_intr_state(sc));


 pmu_send_byte(sc, cmd);


 if (pm_send_cmd_type[cmd] < 0) {
  pmu_send_byte(sc, length);
 }

 for (i = 0; i < length; i++) {
  pmu_send_byte(sc, in_msg[i]);
 }


 rcv_len = pm_receive_cmd_type[cmd];
 if (rcv_len == 0)
  goto done;


 if (rcv_len == 1) {
  pmu_read_byte(sc, out_msg);
  goto done;
 } else
  out_msg[0] = cmd;
 if (rcv_len < 0) {
  pmu_read_byte(sc, &out_len);
  rcv_len = out_len + 1;
 }
 for (i = 1; i < min(rcv_len, rlen); i++)
  pmu_read_byte(sc, &out_msg[i]);

done:
 pmu_write_reg(sc, vIER, (intreg == 0) ? 0 : 0x90);

 return rcv_len;
}
