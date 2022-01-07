
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct generic_vpd {int len; int * data; scalar_t__ offset; } ;
typedef int adapter_t ;


 int t3_seeprom_read (int *,scalar_t__,int*) ;

int t3_read_vpd(adapter_t *adapter, struct generic_vpd *vpd)
{
 u32 i, ret;

 for (i = 0; i < vpd->len; i += 4) {
  ret = t3_seeprom_read(adapter, vpd->offset + i,
          (u32 *) &(vpd->data[i]));
  if (ret)
   return ret;
 }

 return 0;
}
