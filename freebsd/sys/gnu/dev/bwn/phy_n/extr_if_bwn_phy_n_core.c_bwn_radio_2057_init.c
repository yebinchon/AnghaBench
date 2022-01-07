
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int bwn_radio_2057_init_post (struct bwn_mac*) ;
 int bwn_radio_2057_init_pre (struct bwn_mac*) ;
 int r2057_upload_inittabs (struct bwn_mac*) ;

__attribute__((used)) static void bwn_radio_2057_init(struct bwn_mac *mac)
{
 bwn_radio_2057_init_pre(mac);
 r2057_upload_inittabs(mac);
 bwn_radio_2057_init_post(mac);
}
