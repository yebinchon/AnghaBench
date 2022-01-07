
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int ue_miibus; } ;
struct mii_data {int dummy; } ;


 struct mii_data* device_get_softc (int ) ;

struct mii_data *
uether_getmii(struct usb_ether *ue)
{
 return (device_get_softc(ue->ue_miibus));
}
