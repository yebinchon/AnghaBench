
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int pf; } ;
typedef TYPE_1__ adapter_t ;


 int A_PCIE_CFG_SPACE_DATA ;
 int A_PCIE_CFG_SPACE_REQ ;
 scalar_t__ CHELSIO_T5 ;
 int F_ENABLE ;
 int F_LOCALCFG ;
 int F_T6_ENABLE ;
 int V_FUNCTION (int ) ;
 int V_REGISTER (int) ;
 scalar_t__ chip_id (TYPE_1__*) ;
 scalar_t__ is_t4 (TYPE_1__*) ;
 int t4_read_reg (TYPE_1__*,int ) ;
 int t4_write_reg (TYPE_1__*,int ,int) ;

u32 t4_hw_pci_read_cfg4(adapter_t *adap, int reg)
{
 u32 req = V_FUNCTION(adap->pf) | V_REGISTER(reg);
 u32 val;

 if (chip_id(adap) <= CHELSIO_T5)
  req |= F_ENABLE;
 else
  req |= F_T6_ENABLE;

 if (is_t4(adap))
  req |= F_LOCALCFG;

 t4_write_reg(adap, A_PCIE_CFG_SPACE_REQ, req);
 val = t4_read_reg(adap, A_PCIE_CFG_SPACE_DATA);







 t4_write_reg(adap, A_PCIE_CFG_SPACE_REQ, 0);

 return val;
}
