
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 scalar_t__ INT_MDIO_CTRL ;
 int INT_MDIO_CTRL_MCDIV_POS ;
 int INT_MDIO_CTRL_RST ;
 int INT_MDIO_CTRL_SMP ;
 int INT_MDIO_CTRL_XDIV_POS ;
 int NAE_REG (int,int,scalar_t__) ;
 int nlm_write_nae_reg (int ,int ,int) ;

int
nlm_int_gmac_mdio_reset(uint64_t nae_base, int bus, int block,
    int intf_type)
{
 uint32_t val;

 val = (7 << INT_MDIO_CTRL_XDIV_POS) |
     (1 << INT_MDIO_CTRL_MCDIV_POS) |
     (INT_MDIO_CTRL_SMP);

 nlm_write_nae_reg(nae_base,
     NAE_REG(block, intf_type, (INT_MDIO_CTRL + bus * 4)),
     val | INT_MDIO_CTRL_RST);

 nlm_write_nae_reg(nae_base,
     NAE_REG(block, intf_type, (INT_MDIO_CTRL + bus * 4)),
     val);

        return (0);
}
