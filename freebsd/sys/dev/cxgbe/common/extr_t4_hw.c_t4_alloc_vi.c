
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int FW_VI_FUNC_ETH ;
 int t4_alloc_vi_func (struct adapter*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int *,int *,int *,int *,int ,int ) ;

int t4_alloc_vi(struct adapter *adap, unsigned int mbox, unsigned int port,
  unsigned int pf, unsigned int vf, unsigned int nmac, u8 *mac,
  u16 *rss_size, uint8_t *vfvld, uint16_t *vin)
{
 return t4_alloc_vi_func(adap, mbox, port, pf, vf, nmac, mac, rss_size,
    vfvld, vin, FW_VI_FUNC_ETH, 0);
}
