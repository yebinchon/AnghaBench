
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nicpf {int dummy; } ;


 int MAX_BGX_PER_CN88XX ;
 int MAX_LMAC_PER_BGX ;
 int NIC_PF_LMAC_0_7_CFG ;
 int nic_reg_read (struct nicpf*,int) ;
 int nic_reg_write (struct nicpf*,int,int) ;

__attribute__((used)) static void
nic_set_tx_pkt_pad(struct nicpf *nic, int size)
{
 int lmac;
 uint64_t lmac_cfg;


 if (size > 60)
  size = 60;

 for (lmac = 0; lmac < (MAX_BGX_PER_CN88XX * MAX_LMAC_PER_BGX); lmac++) {
  lmac_cfg = nic_reg_read(nic, NIC_PF_LMAC_0_7_CFG | (lmac << 3));
  lmac_cfg &= ~(0xF << 2);
  lmac_cfg |= ((size / 4) << 2);
  nic_reg_write(nic, NIC_PF_LMAC_0_7_CFG | (lmac << 3), lmac_cfg);
 }
}
