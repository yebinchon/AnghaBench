
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwmbus_ivars {int pi_channel; } ;
typedef int device_t ;


 struct pwmbus_ivars* device_get_ivars (int ) ;
 int pwmbus_add_child (int ,int ,char const*,int) ;
 int resource_int_value (char const*,int,char*,int *) ;

__attribute__((used)) static void
pwmbus_hinted_child(device_t dev, const char *dname, int dunit)
{
 struct pwmbus_ivars *ivars;
 device_t child;

 child = pwmbus_add_child(dev, 0, dname, dunit);





 ivars = device_get_ivars(child);
 resource_int_value(dname, dunit, "channel", &ivars->pi_channel);
}
