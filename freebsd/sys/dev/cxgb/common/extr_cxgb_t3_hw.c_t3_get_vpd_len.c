
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct generic_vpd {scalar_t__ offset; } ;
typedef int adapter_t ;


 scalar_t__ MAX_VPD_BYTES ;
 int get_desc_len (int *,scalar_t__) ;
 int is_end_tag (int *,scalar_t__) ;

int t3_get_vpd_len(adapter_t * adapter, struct generic_vpd *vpd)
{
 u32 len=0, offset;
 int inc, ret;

 offset = vpd->offset;

 while (offset < (vpd->offset + MAX_VPD_BYTES)) {
  ret = is_end_tag(adapter, offset);
  if (ret < 0)
   return ret;
  else if (ret == 1)
   break;

  inc = get_desc_len(adapter, offset);
  if (inc < 0)
   return inc;
  len += inc;
  offset += inc;
 }
 return (len + 1);
}
