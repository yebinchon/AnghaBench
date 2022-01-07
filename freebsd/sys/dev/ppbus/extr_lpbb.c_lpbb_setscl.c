
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int SCL_out ;
 int device_get_parent (int ) ;
 int ppb_lock (int ) ;
 int ppb_rctr (int ) ;
 int ppb_unlock (int ) ;
 int ppb_wctr (int ,int ) ;

__attribute__((used)) static void
lpbb_setscl(device_t dev, int val)
{
 device_t ppbus = device_get_parent(dev);

 ppb_lock(ppbus);
 if (val == 0)
  ppb_wctr(ppbus, (u_char)(ppb_rctr(ppbus) & ~SCL_out));
 else
  ppb_wctr(ppbus, (u_char)(ppb_rctr(ppbus) | SCL_out));
 ppb_unlock(ppbus);
}
