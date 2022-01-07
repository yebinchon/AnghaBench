
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int snprintf (char*,int,char*,int,char*) ;
 int strcpy (char*,char*) ;

const char *
vj2asc(u_int32_t val)
{
  static char asc[50];

  if (val)
    snprintf(asc, sizeof asc, "%d VJ slots with%s slot compression",
            (int)((val>>8)&15)+1, val & 1 ? "" : "out");
  else
    strcpy(asc, "VJ disabled");
  return asc;
}
