
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ tolower (int ) ;

int tcb_strmatch_nc(char *cs, char *ct) {
    while (*cs)
        if (tolower(*cs++) != tolower(*ct++)) return (FALSE);
    return (!(*ct));
}
