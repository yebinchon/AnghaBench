
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct ib_device {TYPE_1__* port_immutable; } ;
struct TYPE_2__ {int pkey_tbl_len; } ;


 int ENOENT ;
 int ib_query_pkey (struct ib_device*,size_t,int,int*) ;

int ib_find_pkey(struct ib_device *device,
   u8 port_num, u16 pkey, u16 *index)
{
 int ret, i;
 u16 tmp_pkey;
 int partial_ix = -1;

 for (i = 0; i < device->port_immutable[port_num].pkey_tbl_len; ++i) {
  ret = ib_query_pkey(device, port_num, i, &tmp_pkey);
  if (ret)
   return ret;
  if ((pkey & 0x7fff) == (tmp_pkey & 0x7fff)) {

   if (tmp_pkey & 0x8000) {
    *index = i;
    return 0;
   }
   if (partial_ix < 0)
    partial_ix = i;
  }
 }


 if (partial_ix >= 0) {
  *index = partial_ix;
  return 0;
 }
 return -ENOENT;
}
