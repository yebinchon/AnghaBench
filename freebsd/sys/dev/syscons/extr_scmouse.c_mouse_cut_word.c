
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; int mouse_pos; int xsize; int vtb; } ;
typedef TYPE_1__ scr_stat ;


 scalar_t__ IS_SEP_CHAR (int) ;
 int MOUSE_VISIBLE ;
 char* cut_buffer ;
 int mouse_do_cut (TYPE_1__*,int,int) ;
 int rounddown (int,int) ;
 int sc_vtb_getc (int *,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
mouse_cut_word(scr_stat *scp)
{
    int start;
    int end;
    int sol;
    int eol;
    int c;
    int j;
    int len;







    if (scp->status & MOUSE_VISIBLE) {
 sol = rounddown(scp->mouse_pos, scp->xsize);
 eol = sol + scp->xsize;
 c = sc_vtb_getc(&scp->vtb, scp->mouse_pos);
 if (IS_SEP_CHAR(c)) {

     for (j = scp->mouse_pos; j >= sol; --j) {
  c = sc_vtb_getc(&scp->vtb, j);
         if (!IS_SEP_CHAR(c))
      break;
     }
     start = ++j;
     for (j = scp->mouse_pos; j < eol; ++j) {
  c = sc_vtb_getc(&scp->vtb, j);
         if (!IS_SEP_CHAR(c))
      break;
     }
     end = j - 1;
 } else {

     for (j = scp->mouse_pos; j >= sol; --j) {
  c = sc_vtb_getc(&scp->vtb, j);
         if (IS_SEP_CHAR(c))
      break;
     }
     start = ++j;
     for (j = scp->mouse_pos; j < eol; ++j) {
  c = sc_vtb_getc(&scp->vtb, j);
         if (IS_SEP_CHAR(c))
      break;
     }
     end = j - 1;
 }


 mouse_do_cut(scp, start, end);
 len = strlen(cut_buffer);
 if (cut_buffer[len - 1] == '\r')
     cut_buffer[len - 1] = '\0';
    }
}
