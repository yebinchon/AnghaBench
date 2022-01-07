
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;


 int PWMBUS_CHANNEL_GET_CONFIG (int ,int ,int *,int *) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
pwmbus_channel_get_config(device_t dev, u_int chan, u_int *period, u_int *duty)
{
 return (PWMBUS_CHANNEL_GET_CONFIG(device_get_parent(dev), chan, period, duty));
}
