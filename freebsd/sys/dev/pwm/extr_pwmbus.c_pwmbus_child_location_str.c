
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwmbus_ivars {int pi_channel; } ;
typedef int device_t ;


 struct pwmbus_ivars* device_get_ivars (int ) ;
 char* device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 int snprintf (char*,size_t,char*,char*,int) ;

__attribute__((used)) static int
pwmbus_child_location_str(device_t dev, device_t child, char *buf, size_t blen)
{
 struct pwmbus_ivars *ivars;

 ivars = device_get_ivars(child);
 snprintf(buf, blen, "hwdev=%s channel=%u",
     device_get_nameunit(device_get_parent(dev)), ivars->pi_channel);

 return (0);
}
