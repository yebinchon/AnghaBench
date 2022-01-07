
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ ifmb_word; int ifmb_baudrate; } ;


 scalar_t__ IFM_TYPE_MATCH (int,scalar_t__) ;
 TYPE_1__* ifmedia_baudrate_descriptions ;

uint64_t
ifmedia_baudrate(int mword)
{
 int i;

 for (i = 0; ifmedia_baudrate_descriptions[i].ifmb_word != 0; i++) {
  if (IFM_TYPE_MATCH(mword, ifmedia_baudrate_descriptions[i].ifmb_word))
   return (ifmedia_baudrate_descriptions[i].ifmb_baudrate);
 }


 return (0);
}
