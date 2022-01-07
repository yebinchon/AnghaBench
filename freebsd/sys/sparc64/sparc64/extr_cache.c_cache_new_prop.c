
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;





__attribute__((used)) static u_int
cache_new_prop(u_int cpu_impl)
{

 switch (cpu_impl) {
 case 129:
 case 128:
  return (1);
 default:
  return (0);
 }
}
