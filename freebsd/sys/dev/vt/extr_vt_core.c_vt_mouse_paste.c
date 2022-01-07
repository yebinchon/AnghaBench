
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char term_char_t ;
struct TYPE_6__ {TYPE_1__* vd_curwindow; } ;
struct TYPE_5__ {int vw_terminal; } ;


 char* VD_PASTEBUF (TYPE_2__*) ;
 int VD_PASTEBUFLEN (TYPE_2__*) ;
 TYPE_2__* main_vd ;
 int terminal_input_char (int ,char) ;

__attribute__((used)) static void
vt_mouse_paste()
{
 term_char_t *buf;
 int i, len;

 len = VD_PASTEBUFLEN(main_vd);
 buf = VD_PASTEBUF(main_vd);
 len /= sizeof(term_char_t);
 for (i = 0; i < len; i++) {
  if (buf[i] == '\0')
   continue;
  terminal_input_char(main_vd->vd_curwindow->vw_terminal,
      buf[i]);
 }
}
