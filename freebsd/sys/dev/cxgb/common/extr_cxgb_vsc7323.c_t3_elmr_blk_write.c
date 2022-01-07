
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mdio_ops {int (* write ) (int *,int ,int ,int ,int) ;} ;
typedef int adapter_t ;
struct TYPE_2__ {struct mdio_ops* mdio_ops; } ;


 int ELMR_ADDR ;
 int ELMR_DATA_HI ;
 int ELMR_DATA_LO ;
 int ELMR_LOCK (int *) ;
 int ELMR_MDIO_ADDR ;
 int ELMR_UNLOCK (int *) ;
 TYPE_1__* adapter_info (int *) ;
 int stub1 (int *,int ,int ,int ,int) ;
 int stub2 (int *,int ,int ,int ,int const) ;
 int stub3 (int *,int ,int ,int ,int const) ;

int t3_elmr_blk_write(adapter_t *adap, int start, const u32 *vals, int n)
{
 int ret;
 const struct mdio_ops *mo = adapter_info(adap)->mdio_ops;

 ELMR_LOCK(adap);
 ret = mo->write(adap, ELMR_MDIO_ADDR, 0, ELMR_ADDR, start);
 for ( ; !ret && n; n--, vals++) {
  ret = mo->write(adap, ELMR_MDIO_ADDR, 0, ELMR_DATA_LO,
    *vals & 0xffff);
  if (!ret)
   ret = mo->write(adap, ELMR_MDIO_ADDR, 0, ELMR_DATA_HI,
     *vals >> 16);
 }
 ELMR_UNLOCK(adap);
 return ret;
}
