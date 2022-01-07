
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int IIC_ENOADDR ;
 int viabb_setscl (int ,int) ;
 int viabb_setsda (int ,int) ;

__attribute__((used)) static int
viabb_reset(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{

 viabb_setsda(dev, 1);
 viabb_setscl(dev, 1);

 return (IIC_ENOADDR);
}
