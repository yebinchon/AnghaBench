
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct pwmbus_ivars {int pi_channel; } ;
typedef int device_t ;


 int EINVAL ;

 struct pwmbus_ivars* device_get_ivars (int ) ;

__attribute__((used)) static int
pwmbus_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct pwmbus_ivars *ivars;

 ivars = device_get_ivars(child);

 switch (which) {
 case 128:
  *(u_int *)result = ivars->pi_channel;
  break;
 default:
  return (EINVAL);
 }

 return (0);
}
