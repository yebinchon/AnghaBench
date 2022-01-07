
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_fcb_info ;
 int g_fcb_info4 ;
 int g_fcb_info5 ;
 int g_fcb_info6 ;
 int g_scb_info ;
 int g_scb_info4 ;
 int g_scb_info5 ;
 int g_scb_info6 ;
 int g_tN ;
 int g_tcb_info ;
 int g_tcb_info4 ;
 int g_tcb_info5 ;
 int g_tcb_info6 ;
 int set_tidtype (unsigned int) ;

void
set_tcb_info(unsigned int tidtype, unsigned int cardtype)
{
    set_tidtype(tidtype);

    g_tN = cardtype;
    if (4 == g_tN) {
        g_tcb_info = g_tcb_info4;
        g_scb_info = g_scb_info4;
        g_fcb_info = g_fcb_info4;
    }
    else if (5 == g_tN) {
        g_tcb_info = g_tcb_info5;
        g_scb_info = g_scb_info5;
        g_fcb_info = g_fcb_info5;
    }
    else if (6 == g_tN) {
        g_tcb_info = g_tcb_info6;
        g_scb_info = g_scb_info6;
        g_fcb_info = g_fcb_info6;
    }
}
