
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;
typedef int int16_t ;


 int BWN_PHY_NRSSI_CTRL ;
 int BWN_PHY_NRSSI_DATA ;
 scalar_t__ BWN_PHY_READ (struct bwn_mac*,int ) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int ) ;

__attribute__((used)) static int16_t
bwn_nrssi_read(struct bwn_mac *mac, uint16_t offset)
{

 BWN_PHY_WRITE(mac, BWN_PHY_NRSSI_CTRL, offset);
 return ((int16_t)BWN_PHY_READ(mac, BWN_PHY_NRSSI_DATA));
}
