
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 size_t MCAST_EXCLUDE ;
 size_t MCAST_UNDEFINED ;
 char const** inm_modes ;

__attribute__((used)) static const char *
inm_mode(u_int mode)
{

 if (mode >= MCAST_UNDEFINED && mode <= MCAST_EXCLUDE)
  return (inm_modes[mode]);
 return (((void*)0));
}
