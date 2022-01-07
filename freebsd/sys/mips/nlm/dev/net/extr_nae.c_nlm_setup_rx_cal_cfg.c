
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nae_port_config {scalar_t__ rx_slots_reqd; } ;


 int MAX_CAL_SLOTS ;
 int NAE_RX_IF_SLOT_CAL ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_setup_rx_cal_cfg(uint64_t nae_base, int total_num_ports,
    struct nae_port_config *cfg)
{
 int rx_slots = 0, port;
 int cal_len, cal = 0, last_free = 0;
 uint32_t val;

 for (port = 0; port < total_num_ports; port++) {
  if (cfg[port].rx_slots_reqd)
      rx_slots += cfg[port].rx_slots_reqd;
  if (rx_slots > MAX_CAL_SLOTS) {
   rx_slots = MAX_CAL_SLOTS;
   break;
  }
 }

 cal_len = rx_slots - 1;

 do {
  if (cal >= MAX_CAL_SLOTS)
   break;
  last_free = cal;
  for (port = 0; port < total_num_ports; port++) {
   if (cfg[port].rx_slots_reqd > 0) {
    val = (cal_len << 16) | (port << 8) | cal;
    nlm_write_nae_reg(nae_base,
        NAE_RX_IF_SLOT_CAL, val);
    cal++;
    cfg[port].rx_slots_reqd--;
   }
  }
  if (last_free == cal)
   break;
 } while (1);
}
