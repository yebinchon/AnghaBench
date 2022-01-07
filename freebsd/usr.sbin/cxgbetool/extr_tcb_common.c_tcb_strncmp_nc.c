
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char EOS ;
 int tolower (int ) ;

int
tcb_strncmp_nc(char *cs, char *ct, int n)
{

    int i = 0;
    int ret;


    ret = 0;
    for (i = 0; i < n && 0 == ret && !(EOS == *cs && EOS == *ct); ++i) {



        ret = tolower(*cs++) - tolower(*ct++);
    }
    return ret;
}
