
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_10__ {int pcie_cap_addr; int width; } ;
struct TYPE_11__ {scalar_t__ rev; TYPE_1__ pci; } ;
struct TYPE_12__ {TYPE_2__ params; } ;
typedef TYPE_3__ adapter_t ;


 int A_PCIE_CFG ;
 int A_PCIE_MODE ;
 int A_PCIE_PEX_CTRL0 ;
 int A_PCIE_PEX_CTRL1 ;
 int A_PCIE_PEX_ERR ;
 int F_ENABLELINKDOWNRST ;
 int F_ENABLELINKDWNDRST ;
 int F_PCIE_CLIDECEN ;
 int F_PCIE_DMASTOPEN ;
 unsigned int G_NUMFSTTRNSEQ (int ) ;
 unsigned int G_NUMFSTTRNSEQRX (int ) ;
 unsigned int M_ACKLAT ;
 unsigned int M_REPLAYLMT ;
 unsigned int M_T3A_ACKLAT ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_PAYLOAD ;
 int PCI_EXP_DEVCTL_READRQ ;
 int PCI_EXP_LNKCTL ;
 int V_ACKLAT (unsigned int) ;
 int V_REPLAYLMT (unsigned int) ;
 int V_T3A_ACKLAT (unsigned int) ;
 int fls (int ) ;
 int t3_os_pci_read_config_2 (TYPE_3__*,int,int*) ;
 int t3_os_pci_write_config_2 (TYPE_3__*,int,int) ;
 int t3_read_reg (TYPE_3__*,int ) ;
 int t3_set_reg_field (TYPE_3__*,int ,int,int) ;
 int t3_write_reg (TYPE_3__*,int ,int) ;

__attribute__((used)) static void config_pcie(adapter_t *adap)
{
 static const u16 ack_lat[4][6] = {
  { 237, 416, 559, 1071, 2095, 4143 },
  { 128, 217, 289, 545, 1057, 2081 },
  { 73, 118, 154, 282, 538, 1050 },
  { 67, 107, 86, 150, 278, 534 }
 };
 static const u16 rpl_tmr[4][6] = {
  { 711, 1248, 1677, 3213, 6285, 12429 },
  { 384, 651, 867, 1635, 3171, 6243 },
  { 219, 354, 462, 846, 1614, 3150 },
  { 201, 321, 258, 450, 834, 1602 }
 };

 u16 val, devid;
 unsigned int log2_width, pldsize;
 unsigned int fst_trn_rx, fst_trn_tx, acklat, rpllmt;

 t3_os_pci_read_config_2(adap,
    adap->params.pci.pcie_cap_addr + PCI_EXP_DEVCTL,
    &val);
 pldsize = (val & PCI_EXP_DEVCTL_PAYLOAD) >> 5;





 t3_os_pci_read_config_2(adap, 0x2, &devid);
 if (devid == 0x37) {
  t3_os_pci_write_config_2(adap,
      adap->params.pci.pcie_cap_addr + PCI_EXP_DEVCTL,
      val & ~PCI_EXP_DEVCTL_READRQ & ~PCI_EXP_DEVCTL_PAYLOAD);
  pldsize = 0;
 }

 t3_os_pci_read_config_2(adap,
    adap->params.pci.pcie_cap_addr + PCI_EXP_LNKCTL,
           &val);

 fst_trn_tx = G_NUMFSTTRNSEQ(t3_read_reg(adap, A_PCIE_PEX_CTRL0));
 fst_trn_rx = adap->params.rev == 0 ? fst_trn_tx :
   G_NUMFSTTRNSEQRX(t3_read_reg(adap, A_PCIE_MODE));
 log2_width = fls(adap->params.pci.width) - 1;
 acklat = ack_lat[log2_width][pldsize];
 if (val & 1)
  acklat += fst_trn_tx * 4;
 rpllmt = rpl_tmr[log2_width][pldsize] + fst_trn_rx * 4;

 if (adap->params.rev == 0)
  t3_set_reg_field(adap, A_PCIE_PEX_CTRL1,
     V_T3A_ACKLAT(M_T3A_ACKLAT),
     V_T3A_ACKLAT(acklat));
 else
  t3_set_reg_field(adap, A_PCIE_PEX_CTRL1, V_ACKLAT(M_ACKLAT),
     V_ACKLAT(acklat));

 t3_set_reg_field(adap, A_PCIE_PEX_CTRL0, V_REPLAYLMT(M_REPLAYLMT),
    V_REPLAYLMT(rpllmt));

 t3_write_reg(adap, A_PCIE_PEX_ERR, 0xffffffff);
 t3_set_reg_field(adap, A_PCIE_CFG, 0,
    F_ENABLELINKDWNDRST | F_ENABLELINKDOWNRST |
    F_PCIE_DMASTOPEN | F_PCIE_CLIDECEN);
}
