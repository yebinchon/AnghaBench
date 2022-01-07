
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int BWN_MACCTL ;
 int BWN_MACCTL_RADIO_LOCK ;
 int BWN_PHYVER ;
 int BWN_READ_2 (struct bwn_mac*,int ) ;
 int BWN_READ_4 (struct bwn_mac*,int ) ;
 int BWN_WRITE_4 (struct bwn_mac*,int ,int) ;

__attribute__((used)) static void
bwn_rf_unlock(struct bwn_mac *mac)
{

 BWN_READ_2(mac, BWN_PHYVER);
 BWN_WRITE_4(mac, BWN_MACCTL,
     BWN_READ_4(mac, BWN_MACCTL) & ~BWN_MACCTL_RADIO_LOCK);
}
