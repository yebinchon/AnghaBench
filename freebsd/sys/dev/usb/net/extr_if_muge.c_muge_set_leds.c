
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_ether {int ue_udev; int ue_dev; } ;
struct muge_softc {int sc_leds; int sc_led_modes; int sc_led_modes_mask; } ;
typedef int ssize_t ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int modes ;


 int ETH_HW_CFG_LED1_EN_ ;
 int ETH_HW_CFG_LED2_EN_ ;
 int ETH_HW_CFG_LED3_EN_ ;
 int ETH_HW_CFG_LEDO_EN_ ;
 int OF_getencprop (int,char*,int*,int) ;
 int muge_dbg_printf (struct muge_softc*,char*) ;
 struct muge_softc* uether_getsc (struct usb_ether*) ;
 int usb_fdt_get_node (int ,int ) ;

__attribute__((used)) static void
muge_set_leds(struct usb_ether *ue)
{
}
