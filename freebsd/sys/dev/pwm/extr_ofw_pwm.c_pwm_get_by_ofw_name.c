
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pwm_channel_t ;
typedef int phandle_t ;
typedef int device_t ;


 int ofw_bus_find_string_index (int ,char*,char const*,int*) ;
 int pwm_get_by_ofw_idx (int ,int ,int,int *) ;

int
pwm_get_by_ofw_name(device_t consumer, phandle_t node, const char *name,
    pwm_channel_t *out_channel)
{
 int rv, idx;

 rv = ofw_bus_find_string_index(node, "pwm-names", name, &idx);
 if (rv != 0)
  return (rv);

 return (pwm_get_by_ofw_idx(consumer, node, idx, out_channel));
}
