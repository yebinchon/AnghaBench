
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int adapter_t ;


 int VSC_REG (int,int,int) ;
 int elmr_write (int *,int ,int) ;

int t3_vsc7323_set_addr(adapter_t *adap, u8 addr[6], int port)
{
 int ret;

 ret = elmr_write(adap, VSC_REG(1, port, 3),
    (addr[0] << 16) | (addr[1] << 8) | addr[2]);
 if (!ret)
  ret = elmr_write(adap, VSC_REG(1, port, 4),
     (addr[3] << 16) | (addr[4] << 8) | addr[5]);
 return ret;
}
