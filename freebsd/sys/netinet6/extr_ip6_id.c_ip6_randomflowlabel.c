
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 scalar_t__ __predict_false (int) ;
 int is_random_seeded () ;
 int randomid (int *) ;
 int randomtab_20 ;

u_int32_t
ip6_randomflowlabel(void)
{
 if (__predict_false(!is_random_seeded()))
  return (0);

 return randomid(&randomtab_20) & 0xfffff;
}
