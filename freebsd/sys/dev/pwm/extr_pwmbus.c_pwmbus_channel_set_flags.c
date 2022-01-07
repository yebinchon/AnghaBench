
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int device_t ;


 int PWMBUS_CHANNEL_SET_FLAGS (int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
pwmbus_channel_set_flags(device_t dev, u_int chan, uint32_t flags)
{
 return (PWMBUS_CHANNEL_SET_FLAGS(device_get_parent(dev), chan, flags));
}
