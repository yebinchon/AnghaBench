
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pwm_channel_t ;
typedef int phandle_t ;
typedef int device_t ;


 int pwm_get_by_ofw_propidx (int ,int ,char const*,int ,int *) ;

int
pwm_get_by_ofw_property(device_t consumer, phandle_t node,
    const char *prop_name, pwm_channel_t *out_channel)
{

 return (pwm_get_by_ofw_propidx(consumer, node, prop_name, 0, out_channel));
}
