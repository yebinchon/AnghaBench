
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct mdio_ops {int (* write ) (int *,int ,int ,int ,int) ;int (* read ) (int *,int ,int ,int ,unsigned int*) ;} ;
typedef int adapter_t ;
struct TYPE_2__ {struct mdio_ops* mdio_ops; } ;


 int ELMR_ADDR ;
 int ELMR_DATA_HI ;
 int ELMR_DATA_LO ;
 int ELMR_LOCK (int *) ;
 int ELMR_MDIO_ADDR ;
 int ELMR_STAT ;
 int ELMR_UNLOCK (int *) ;
 int ETIMEDOUT ;
 TYPE_1__* adapter_info (int *) ;
 int stub1 (int *,int ,int ,int ,int) ;
 int stub2 (int *,int ,int ,int ,unsigned int*) ;
 int stub3 (int *,int ,int ,int ,unsigned int*) ;
 int stub4 (int *,int ,int ,int ,unsigned int*) ;
 int udelay (int) ;

int t3_elmr_blk_read(adapter_t *adap, int start, u32 *vals, int n)
{
 int i, ret;
 unsigned int v;
 const struct mdio_ops *mo = adapter_info(adap)->mdio_ops;

 ELMR_LOCK(adap);

 ret = mo->write(adap, ELMR_MDIO_ADDR, 0, ELMR_ADDR, start);
 if (ret)
  goto out;

 for (i = 0; i < 5; i++) {
  ret = mo->read(adap, ELMR_MDIO_ADDR, 0, ELMR_STAT, &v);
  if (ret)
   goto out;
  if (v == 1)
   break;
  udelay(5);
 }
 if (v != 1) {
  ret = -ETIMEDOUT;
  goto out;
 }

 for ( ; !ret && n; n--, vals++) {
  ret = mo->read(adap, ELMR_MDIO_ADDR, 0, ELMR_DATA_LO, vals);
  if (!ret) {
   ret = mo->read(adap, ELMR_MDIO_ADDR, 0, ELMR_DATA_HI,
           &v);
   *vals |= v << 16;
  }
 }
out: ELMR_UNLOCK(adap);
 return ret;
}
