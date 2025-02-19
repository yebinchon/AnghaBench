
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int SDA_in ;
 int device_get_parent (int ) ;
 int ppb_lock (int ) ;
 int ppb_rstr (int ) ;
 int ppb_unlock (int ) ;

__attribute__((used)) static int
lpbb_getsda(device_t dev)
{
 device_t ppbus = device_get_parent(dev);
 int rval;

 ppb_lock(ppbus);
 rval = ((ppb_rstr(ppbus) & SDA_in) == SDA_in);
 ppb_unlock(ppbus);
 return (rval);
}
