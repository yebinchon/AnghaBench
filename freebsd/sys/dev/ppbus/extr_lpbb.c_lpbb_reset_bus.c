
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int SCL_out ;
 scalar_t__ SDA_out ;
 int device_get_parent (int ) ;
 int ppb_assert_locked (int ) ;
 int ppb_rctr (int ) ;
 int ppb_wctr (int ,int ) ;
 int ppb_wdtr (int ,int ) ;

__attribute__((used)) static void
lpbb_reset_bus(device_t dev)
{
 device_t ppbus = device_get_parent(dev);

 ppb_assert_locked(ppbus);
 ppb_wdtr(ppbus, (u_char)~SDA_out);
 ppb_wctr(ppbus, (u_char)(ppb_rctr(ppbus) | SCL_out));
}
