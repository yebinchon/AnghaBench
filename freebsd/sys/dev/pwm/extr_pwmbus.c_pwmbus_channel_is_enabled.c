
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;


 int PWMBUS_CHANNEL_IS_ENABLED (int ,int ,int*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
pwmbus_channel_is_enabled(device_t dev, u_int chan, bool *enable)
{
 return (PWMBUS_CHANNEL_IS_ENABLED(device_get_parent(dev), chan, enable));
}
