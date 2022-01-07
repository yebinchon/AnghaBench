
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwn_mac {int dummy; } ;


 int BWN_PS_STATUS ;
 int BWN_READ_4 (struct bwn_mac*,int ) ;
 int BWN_WRITE_2 (struct bwn_mac*,int ,int) ;

__attribute__((used)) static void
bwn_intr_pmq(struct bwn_mac *mac)
{
 uint32_t tmp;

 while (1) {
  tmp = BWN_READ_4(mac, BWN_PS_STATUS);
  if (!(tmp & 0x00000008))
   break;
 }
 BWN_WRITE_2(mac, BWN_PS_STATUS, 0x0002);
}
