
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nae_port_config {scalar_t__ tx_slots_reqd; } ;


 int MAX_CAL_SLOTS ;
 int NAE_EGR_NIOR_CAL_LEN_REG ;
 int NAE_EGR_NIOR_CRDT_CAL_PROG ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_setup_tx_cal_cfg(uint64_t nae_base, int total_num_ports,
    struct nae_port_config *cfg)
{
 int tx_slots = 0, port;
 int cal = 0, last_free = 0;
 uint32_t val;

 for (port = 0; port < total_num_ports; port++) {
  if (cfg[port].tx_slots_reqd)
   tx_slots += cfg[port].tx_slots_reqd;
  if (tx_slots > MAX_CAL_SLOTS) {
   tx_slots = MAX_CAL_SLOTS;
   break;
  }
 }

 nlm_write_nae_reg(nae_base, NAE_EGR_NIOR_CAL_LEN_REG, tx_slots - 1);
 do {
  if (cal >= MAX_CAL_SLOTS)
   break;
  last_free = cal;
  for (port = 0; port < total_num_ports; port++) {
   if (cfg[port].tx_slots_reqd > 0) {
    val = (port << 7) | (cal << 1) | 1;
    nlm_write_nae_reg(nae_base,
        NAE_EGR_NIOR_CRDT_CAL_PROG, val);
    cal++;
    cfg[port].tx_slots_reqd--;
   }
  }
  if (last_free == cal)
   break;
 } while (1);
}
