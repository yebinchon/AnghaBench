
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P_NO ;
 int P_NONE ;
 int P_RANDOM ;
 char const** boolfalse ;
 char const** booltrue ;

char const *
boolean_str(int val)
{
 if (val == P_NO)
  return (boolfalse[0]);
 else if (val == P_RANDOM)
  return ("random");
 else if (val == P_NONE)
  return ("none");
 else
  return (booltrue[0]);
}
