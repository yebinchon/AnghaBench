
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ib_sa_comp_mask ;






__attribute__((used)) static int check_selector(ib_sa_comp_mask comp_mask,
     ib_sa_comp_mask selector_mask,
     ib_sa_comp_mask value_mask,
     u8 selector, u8 src_value, u8 dst_value)
{
 int err;

 if (!(comp_mask & selector_mask) || !(comp_mask & value_mask))
  return 0;

 switch (selector) {
 case 129:
  err = (src_value <= dst_value);
  break;
 case 128:
  err = (src_value >= dst_value);
  break;
 case 130:
  err = (src_value != dst_value);
  break;
 default:
  err = 0;
  break;
 }

 return err;
}
