
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initvals_band; int initvals; int pcm; int ucode; } ;
struct bwn_mac {TYPE_1__ mac_fw; } ;


 int bwn_do_release_fw (int *) ;

__attribute__((used)) static void
bwn_release_firmware(struct bwn_mac *mac)
{

 bwn_do_release_fw(&mac->mac_fw.ucode);
 bwn_do_release_fw(&mac->mac_fw.pcm);
 bwn_do_release_fw(&mac->mac_fw.initvals);
 bwn_do_release_fw(&mac->mac_fw.initvals_band);
}
