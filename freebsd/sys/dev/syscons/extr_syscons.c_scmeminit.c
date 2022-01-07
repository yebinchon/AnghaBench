
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ TRUE ;
 int VTY_SC ;
 int sc_alloc_cut_buffer (int ,int ) ;
 int sc_alloc_history_buffer (int ,int ,int ,int ) ;
 int sc_alloc_scr_buffer (int ,int ,int ) ;
 int sc_console ;
 scalar_t__ sc_console_unit ;
 scalar_t__ sc_malloc ;
 int vty_enabled (int ) ;

__attribute__((used)) static void
scmeminit(void *arg)
{
    if (!vty_enabled(VTY_SC))
        return;
    if (sc_malloc)
 return;
    sc_malloc = TRUE;






    if (sc_console_unit < 0)
 return;


    sc_alloc_scr_buffer(sc_console, FALSE, FALSE);


    sc_alloc_cut_buffer(sc_console, FALSE);




    sc_alloc_history_buffer(sc_console, 0, 0, FALSE);

}
