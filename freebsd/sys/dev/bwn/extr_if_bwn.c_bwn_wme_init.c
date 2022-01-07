
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int BWN_HF_EDCF ;
 int BWN_IFSCTL ;
 int BWN_IFSCTL_USE_EDCF ;
 int BWN_READ_2 (struct bwn_mac*,int ) ;
 int BWN_WRITE_2 (struct bwn_mac*,int ,int) ;
 int bwn_hf_read (struct bwn_mac*) ;
 int bwn_hf_write (struct bwn_mac*,int) ;
 int bwn_wme_load (struct bwn_mac*) ;

__attribute__((used)) static void
bwn_wme_init(struct bwn_mac *mac)
{

 bwn_wme_load(mac);


 bwn_hf_write(mac, bwn_hf_read(mac) | BWN_HF_EDCF);
 BWN_WRITE_2(mac, BWN_IFSCTL, BWN_READ_2(mac, BWN_IFSCTL) |
     BWN_IFSCTL_USE_EDCF);
}
