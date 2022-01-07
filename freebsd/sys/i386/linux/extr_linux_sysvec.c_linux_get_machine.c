
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_class ;

__attribute__((used)) static void
linux_get_machine(const char **dst)
{

 switch (cpu_class) {
 case 128:
  *dst = "i686";
  break;
 case 129:
  *dst = "i586";
  break;
 case 130:
  *dst = "i486";
  break;
 default:
  *dst = "i386";
 }
}
