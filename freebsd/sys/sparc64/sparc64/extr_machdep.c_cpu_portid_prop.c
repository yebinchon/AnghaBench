
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
const char *
cpu_portid_prop(u_int cpu_impl)
{

 switch (cpu_impl) {
 case 139:
 case 138:
 case 137:
 case 136:
 case 130:
 case 131:
  return ("upa-portid");
 case 135:
 case 132:
 case 134:
 case 133:
  return ("portid");
 case 129:
 case 128:
  return ("cpuid");
 default:
  return ("");
 }
}
