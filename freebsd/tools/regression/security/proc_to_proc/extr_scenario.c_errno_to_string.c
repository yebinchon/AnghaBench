
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;

__attribute__((used)) static char *
errno_to_string(int error)
{

 switch (error) {
 case 129:
  return ("EPERM");
 case 133:
  return ("EACCES");
 case 132:
  return ("EINVAL");
 case 131:
  return ("ENOSYS");
 case 128:
  return ("ESRCH");
 case 130:
  return ("EOPNOTSUPP");
 case 0:
  return ("0");
 default:
  printf("%d\n", error);
  return ("unknown");
 }
}
