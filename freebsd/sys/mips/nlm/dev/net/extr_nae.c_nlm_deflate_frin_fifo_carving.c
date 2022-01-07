
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_FREE_IN_FIFO_CFG ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_deflate_frin_fifo_carving(uint64_t nae_base, int total_num_ports)
{
 const int minimum_size = 8;
 uint32_t value;
 int intf, start;

 for (intf = 0; intf < total_num_ports; intf++) {
  start = minimum_size * intf;
  value = (minimum_size << 20) | (start << 8) | (intf);
  nlm_write_nae_reg(nae_base, NAE_FREE_IN_FIFO_CFG, value);
 }
}
