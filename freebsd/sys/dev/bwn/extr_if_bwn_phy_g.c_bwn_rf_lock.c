
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int BWN_MACCTL ;
 int BWN_MACCTL_RADIO_LOCK ;
 int BWN_READ_4 (struct bwn_mac*,int ) ;
 int BWN_WRITE_4 (struct bwn_mac*,int ,int) ;
 int DELAY (int) ;

__attribute__((used)) static void
bwn_rf_lock(struct bwn_mac *mac)
{

 BWN_WRITE_4(mac, BWN_MACCTL,
     BWN_READ_4(mac, BWN_MACCTL) | BWN_MACCTL_RADIO_LOCK);
 BWN_READ_4(mac, BWN_MACCTL);
 DELAY(10);
}
