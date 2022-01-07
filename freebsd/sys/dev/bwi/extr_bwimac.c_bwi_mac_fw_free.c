
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_mac {int * mac_stub; int * mac_iv_ext; int * mac_iv; int * mac_pcm; int * mac_ucode; } ;


 int FIRMWARE_UNLOAD ;
 int firmware_put (int *,int ) ;

__attribute__((used)) static void
bwi_mac_fw_free(struct bwi_mac *mac)
{
 if (mac->mac_ucode != ((void*)0)) {
  firmware_put(mac->mac_ucode, FIRMWARE_UNLOAD);
  mac->mac_ucode = ((void*)0);
 }

 if (mac->mac_pcm != ((void*)0)) {
  firmware_put(mac->mac_pcm, FIRMWARE_UNLOAD);
  mac->mac_pcm = ((void*)0);
 }

 if (mac->mac_iv != ((void*)0)) {
  firmware_put(mac->mac_iv, FIRMWARE_UNLOAD);
  mac->mac_iv = ((void*)0);
 }

 if (mac->mac_iv_ext != ((void*)0)) {
  firmware_put(mac->mac_iv_ext, FIRMWARE_UNLOAD);
  mac->mac_iv_ext = ((void*)0);
 }

 if (mac->mac_stub != ((void*)0)) {
  firmware_put(mac->mac_stub, FIRMWARE_UNLOAD);
  mac->mac_stub = ((void*)0);
 }
}
