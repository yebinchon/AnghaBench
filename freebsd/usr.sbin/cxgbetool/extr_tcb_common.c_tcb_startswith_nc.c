
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char*) ;
 scalar_t__ tcb_strncmp_nc (char*,char*,int) ;

int
tcb_startswith_nc(char *cs, char *ct)
{
    return (0 == tcb_strncmp_nc(cs, ct, (int)strlen(ct)));
}
