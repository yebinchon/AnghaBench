
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct xhci_softc {int dummy; } ;
typedef int device_t ;


 int CLRSET4 (struct xhci_softc*,scalar_t__,int,int) ;
 int DELAY (int) ;
 scalar_t__ RD4 (struct xhci_softc*,int ) ;
 int SYNC_HS_EOF ;
 int SYNC_HS_EOF_VAL ;
 scalar_t__ U2_PHYD_CR1 ;
 int U2_PHYD_CR1_MASK ;
 int U2_PHYD_CR1_VAL ;
 scalar_t__ U2_PHY_BASE_P0 ;
 scalar_t__ U2_PHY_BASE_P1 ;
 scalar_t__ U2_PORT_NUM (scalar_t__) ;
 int U3_LTSSM_TIMING_PARAM3 ;
 int U3_LTSSM_TIMING_VAL ;
 scalar_t__ U3_PORT_NUM (scalar_t__) ;
 int USB_HDMA_CFG ;
 int USB_HDMA_CFG_MT7621_VAL ;
 int USB_IP_CAP ;
 int USB_IP_PDN ;
 scalar_t__ USB_IP_PW_CTRL ;
 scalar_t__ USB_IP_PW_CTRL_1 ;
 int USB_IP_SPAR0 ;
 int USB_IP_SPAR0_VAL ;
 int USB_IP_SW_RST ;
 int USB_PORT_DIS ;
 int USB_PORT_PDN ;
 scalar_t__ USB_U2_CTRL (scalar_t__) ;
 scalar_t__ USB_U3_CTRL (scalar_t__) ;
 int WR4 (struct xhci_softc*,int ,int ) ;
 struct xhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
mtk_xhci_fdt_init(device_t dev)
{
 struct xhci_softc *sc;
 uint32_t temp, u3_ports, u2_ports, i;

 sc = device_get_softc(dev);

 temp = RD4(sc, USB_IP_CAP);
 u3_ports = U3_PORT_NUM(temp);
 u2_ports = U2_PORT_NUM(temp);

 device_printf(dev, "%d USB3 ports, %d USB2 ports\n",
     u3_ports, u2_ports);

 CLRSET4(sc, USB_IP_PW_CTRL, 0, USB_IP_SW_RST);
 CLRSET4(sc, USB_IP_PW_CTRL, USB_IP_SW_RST, 0);
 CLRSET4(sc, USB_IP_PW_CTRL_1, USB_IP_PDN, 0);

 for (i = 0; i < u3_ports; i++)
  CLRSET4(sc, USB_U3_CTRL(i), USB_PORT_PDN | USB_PORT_DIS, 0);

 for (i = 0; i < u2_ports; i++)
  CLRSET4(sc, USB_U2_CTRL(i), USB_PORT_PDN | USB_PORT_DIS, 0);

 DELAY(100000);

 WR4(sc, USB_HDMA_CFG, USB_HDMA_CFG_MT7621_VAL);
 WR4(sc, U3_LTSSM_TIMING_PARAM3, U3_LTSSM_TIMING_VAL);
 WR4(sc, SYNC_HS_EOF, SYNC_HS_EOF_VAL);
 WR4(sc, USB_IP_SPAR0, USB_IP_SPAR0_VAL);
 CLRSET4(sc, U2_PHY_BASE_P0 + U2_PHYD_CR1, U2_PHYD_CR1_MASK,
     U2_PHYD_CR1_VAL);
 CLRSET4(sc, U2_PHY_BASE_P1 + U2_PHYD_CR1, U2_PHYD_CR1_MASK,
     U2_PHYD_CR1_VAL);
}
