
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ u16; } ;
struct diocgattr_arg {int len; TYPE_1__ value; int name; } ;


 int DIOCGATTR ;
 scalar_t__ DISK_RR_MAX ;
 scalar_t__ DISK_RR_MIN ;
 scalar_t__ DISK_RR_NON_ROTATING ;
 scalar_t__ DISK_RR_UNKNOWN ;
 int ioctl (int,int ,struct diocgattr_arg*) ;
 int snprintf (char*,size_t,char*,...) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
rotationrate(int fd, char *rate, size_t buflen)
{
 struct diocgattr_arg arg;
 int ret;

 strlcpy(arg.name, "GEOM::rotation_rate", sizeof(arg.name));
 arg.len = sizeof(arg.value.u16);

 ret = ioctl(fd, DIOCGATTR, &arg);
 if (ret < 0 || arg.value.u16 == DISK_RR_UNKNOWN)
  snprintf(rate, buflen, "Unknown");
 else if (arg.value.u16 == DISK_RR_NON_ROTATING)
  snprintf(rate, buflen, "%d", 0);
 else if (arg.value.u16 >= DISK_RR_MIN && arg.value.u16 <= DISK_RR_MAX)
  snprintf(rate, buflen, "%d", arg.value.u16);
 else
  snprintf(rate, buflen, "Invalid");
}
