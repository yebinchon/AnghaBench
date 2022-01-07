
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;

char const *
hci_con_state2str(int state)
{
 static char const * const t[] = {
                                    "CLOSED",
                                    "W4_LP_CON_RSP",
                                    "W4_CONN_COMPLETE",
                                    "OPEN"
        };

 return (state >= SIZE(t)? "UNKNOWN" : t[state]);
}
