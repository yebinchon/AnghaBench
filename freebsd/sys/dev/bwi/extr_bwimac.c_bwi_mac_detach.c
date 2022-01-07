
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_mac {int dummy; } ;


 int bwi_mac_fw_free (struct bwi_mac*) ;

void
bwi_mac_detach(struct bwi_mac *mac)
{
 bwi_mac_fw_free(mac);
}
