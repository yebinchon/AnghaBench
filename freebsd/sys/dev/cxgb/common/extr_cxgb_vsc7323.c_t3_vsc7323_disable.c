
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 int VSC_REG (int,int,int ) ;
 int elmr_write (int *,int ,unsigned int) ;
 int t3_elmr_blk_read (int *,int ,unsigned int*,int) ;

int t3_vsc7323_disable(adapter_t *adap, int port, int which)
{
 int ret;
 unsigned int v, orig;

 ret = t3_elmr_blk_read(adap, VSC_REG(1, port, 0), &v, 1);
 if (!ret) {
  orig = v;
  if (which & MAC_DIRECTION_TX)
   v &= ~1;
  if (which & MAC_DIRECTION_RX)
   v &= ~2;
  if (v != orig)
   ret = elmr_write(adap, VSC_REG(1, port, 0), v);
 }
 return ret;
}
