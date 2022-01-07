
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_mac {int dummy; } ;
typedef int int16_t ;


 int NRSSI_11G_MASK ;
 int PHY_READ (struct bwi_mac*,int) ;
 scalar_t__ __SHIFTOUT (int ,int ) ;

__attribute__((used)) static __inline int16_t
bwi_nrssi_11g(struct bwi_mac *mac)
{
 int16_t val;



 val = (int16_t)__SHIFTOUT(PHY_READ(mac, 0x47f), __BITS(13, 8));
 if (val >= 32)
  val -= 64;
 return val;


}
