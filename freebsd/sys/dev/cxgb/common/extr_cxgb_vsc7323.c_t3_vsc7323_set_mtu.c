
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int VSC_REG (int,int,int) ;
 int elmr_write (int *,int ,unsigned int) ;

int t3_vsc7323_set_mtu(adapter_t *adap, unsigned int mtu, int port)
{
 return elmr_write(adap, VSC_REG(1, port, 2), mtu);
}
