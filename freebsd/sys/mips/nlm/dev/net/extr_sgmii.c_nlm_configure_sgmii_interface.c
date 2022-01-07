
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int MAC_CONF1 ;
 int MAC_CONF2 ;
 int NAE_REG (int,int,int ) ;
 int SGMII_MAX_FRAME (int,int) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_configure_sgmii_interface(uint64_t nae_base, int block, int port,
    int mtu, int loopback)
{
 uint32_t data1, data2;


 data1 = (0x1 << 31);
 if (loopback)
  data1 |= (0x01 << 8);
 data1 |= (0x01 << 2);
 data1 |= 0x01;
 nlm_write_nae_reg(nae_base, NAE_REG(block, port, MAC_CONF1), data1);

 data2 = (0x7 << 12) |
     (0x2 << 8) |
     0x1;
 nlm_write_nae_reg(nae_base, NAE_REG(block, port, MAC_CONF2), data2);


 data1 &= ~(0x01 << 31);
 nlm_write_nae_reg(nae_base, NAE_REG(block, port, MAC_CONF1), data1);


 nlm_write_nae_reg(nae_base, SGMII_MAX_FRAME(block, port), mtu);
}
