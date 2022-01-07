
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwmbus_ivars {int pi_channel; } ;
typedef int device_t ;


 struct pwmbus_ivars* device_get_ivars (int ) ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static void
pwmbus_probe_nomatch(device_t dev, device_t child)
{
 struct pwmbus_ivars *ivars;

 ivars = device_get_ivars(child);
 if (ivars != ((void*)0))
  device_printf(dev, "<unknown> on channel %u\n",
      ivars->pi_channel);

 return;
}
