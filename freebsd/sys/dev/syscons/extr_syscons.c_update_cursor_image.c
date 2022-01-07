
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scr_stat ;


 int sc_draw_cursor_image (int *) ;
 int sc_remove_cursor_image (int *) ;
 int sc_set_cursor_image (int *) ;

__attribute__((used)) static void
update_cursor_image(scr_stat *scp)
{

    sc_remove_cursor_image(scp);
    sc_set_cursor_image(scp);
    sc_draw_cursor_image(scp);
}
