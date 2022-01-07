
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cmd; int width; int val; int reg; } ;
typedef TYPE_1__ qlnx_pcicfg_rd_wr_t ;
struct TYPE_6__ {int pci_dev; } ;
typedef TYPE_2__ qlnx_host_t ;


 int EINVAL ;


 int pci_read_config (int ,int ,int ) ;
 int pci_write_config (int ,int ,int ,int ) ;

__attribute__((used)) static int
qlnx_rd_wr_pci_config(qlnx_host_t *ha, qlnx_pcicfg_rd_wr_t *pci_cfg_rd_wr)
{
 int rval = 0;

 switch (pci_cfg_rd_wr->cmd) {

  case 129:
   pci_cfg_rd_wr->val = pci_read_config(ha->pci_dev,
      pci_cfg_rd_wr->reg,
      pci_cfg_rd_wr->width);
   break;

  case 128:
   pci_write_config(ha->pci_dev, pci_cfg_rd_wr->reg,
    pci_cfg_rd_wr->val, pci_cfg_rd_wr->width);
   break;

  default:
   rval = EINVAL;
   break;
 }

 return (rval);
}
