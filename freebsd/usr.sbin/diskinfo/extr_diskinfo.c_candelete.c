
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i; } ;
struct diocgattr_arg {int len; TYPE_1__ value; int name; } ;


 int DIOCGATTR ;
 scalar_t__ ioctl (int,int ,struct diocgattr_arg*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static bool
candelete(int fd)
{
 struct diocgattr_arg arg;

 strlcpy(arg.name, "GEOM::candelete", sizeof(arg.name));
 arg.len = sizeof(arg.value.i);
 if (ioctl(fd, DIOCGATTR, &arg) == 0)
  return (arg.value.i != 0);
 else
  return (0);
}
