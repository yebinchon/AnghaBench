
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwi_mac {int * mac_iv_ext; int * mac_iv; TYPE_1__* mac_sc; } ;
typedef int device_t ;
struct TYPE_2__ {int sc_dev; } ;


 int bwi_mac_fw_load_iv (struct bwi_mac*,int *) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bwi_mac_fw_init(struct bwi_mac *mac)
{
 device_t dev = mac->mac_sc->sc_dev;
 int error;

 error = bwi_mac_fw_load_iv(mac, mac->mac_iv);
 if (error) {
  device_printf(dev, "load IV failed\n");
  return error;
 }

 if (mac->mac_iv_ext != ((void*)0)) {
  error = bwi_mac_fw_load_iv(mac, mac->mac_iv_ext);
  if (error)
   device_printf(dev, "load ExtIV failed\n");
 }
 return error;
}
