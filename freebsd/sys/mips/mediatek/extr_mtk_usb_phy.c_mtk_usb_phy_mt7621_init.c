
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_usb_phy_softc {int u2_base; } ;
typedef int device_t ;


 int MT7621_U2_BASE_P1 ;
 struct mtk_usb_phy_softc* device_get_softc (int ) ;
 int mtk_usb_phy_slew_rate_calibration (struct mtk_usb_phy_softc*) ;

__attribute__((used)) static void
mtk_usb_phy_mt7621_init(device_t dev)
{
}
