
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_30__ {int bg; int fg; } ;
struct TYPE_29__ {int fg; int bg; } ;
struct TYPE_31__ {int esc; int saved_xpos; int saved_ypos; int last_param; int num_param; int* param; int attr_mask; void* cur_attr; TYPE_2__ rev_color; TYPE_1__ std_color; TYPE_1__ cur_color; TYPE_2__ dflt_rev_color; TYPE_1__ dflt_std_color; } ;
typedef TYPE_3__ term_stat ;
typedef int tcattrs ;
struct TYPE_32__ {int xpos; int ypos; int xsize; int border; int bell_pitch; int bell_duration; int font_size; int cursor_pos; int vtb; TYPE_5__* sc; } ;
typedef TYPE_4__ scr_stat ;
struct TYPE_33__ {TYPE_4__* cur_scp; int * scr_map; } ;
typedef TYPE_5__ sc_softc_t ;
typedef int cattrs ;


 int BG_CHANGED ;
 int BLINK_ATTR ;
 int BOLD_ATTR ;
 int FG_CHANGED ;
 int MAX_ESC_PAR ;
 void* NORMAL_ATTR ;
 int REVERSE_ATTR ;
 int UNDERLINE_ATTR ;
 int hz ;
 int mark_for_update (TYPE_4__*,int ) ;
 void* mask2attr (TYPE_3__*) ;
 int sc_change_cursor_shape (TYPE_4__*,int const,int,int) ;
 int sc_clear_screen (TYPE_4__*) ;
 int sc_move_cursor (TYPE_4__*,int,int) ;
 int sc_set_border (TYPE_4__*,int) ;
 int sc_switch_scr (TYPE_5__*,int) ;
 int sc_term_backtab (TYPE_4__*,int) ;
 int sc_term_clr_eol (TYPE_4__*,int,int ,void*) ;
 int sc_term_clr_eos (TYPE_4__*,int,int ,void*) ;
 int sc_term_col (TYPE_4__*,int) ;
 int sc_term_del_char (TYPE_4__*,int,int ,void*) ;
 int sc_term_del_line (TYPE_4__*,int,int,int ,void*,int ) ;
 int sc_term_down (TYPE_4__*,int,int ) ;
 int sc_term_ins_char (TYPE_4__*,int,int ,void*) ;
 int sc_term_ins_line (TYPE_4__*,int,int,int ,void*,int ) ;
 int sc_term_left (TYPE_4__*,int) ;
 int sc_term_right (TYPE_4__*,int) ;
 int sc_term_row (TYPE_4__*,int) ;
 int sc_term_up (TYPE_4__*,int,int ) ;
 int sc_term_up_scroll (TYPE_4__*,int,int ,void*,int ,int ) ;
 int sc_vtb_erase (int *,int ,int,int ,void*) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static void
scterm_scan_esc(scr_stat *scp, term_stat *tcp, u_char c)
{
 static u_char ansi_col[16] = {
  143, 130, 138, 141,
  142, 131, 140, 134,
  139, 132, 135, 128,
  137, 133, 136, 129
 };
 static int cattrs[] = {
  0,
  148,
  147,
  147 | 148,
  144,
  146,
 };
 static int tcattrs[] = {
  144 | 145,
  146 | 145,
  148 | 145,
 };
 sc_softc_t *sc;
 int v0, v1, v2;
 int i, n;

 i = n = 0;
 sc = scp->sc;
 if (tcp->esc == 1) {
  switch (c) {

  case '7':
   tcp->saved_xpos = scp->xpos;
   tcp->saved_ypos = scp->ypos;
   break;

  case '8':
   if (tcp->saved_xpos >= 0 && tcp->saved_ypos >= 0)
    sc_move_cursor(scp, tcp->saved_xpos,
            tcp->saved_ypos);
   break;

  case '[':
   tcp->esc = 2;
   tcp->last_param = -1;
   for (i = tcp->num_param; i < MAX_ESC_PAR; i++)
    tcp->param[i] = 1;
   tcp->num_param = 0;
   return;

  case 'M':
   sc_term_up_scroll(scp, 1, sc->scr_map[0x20],
       tcp->cur_attr, 0, 0);
   break;





  case 'c':
   tcp->attr_mask = NORMAL_ATTR;
   tcp->cur_color = tcp->std_color
           = tcp->dflt_std_color;
   tcp->rev_color = tcp->dflt_rev_color;
   tcp->cur_attr = mask2attr(tcp);
   sc_change_cursor_shape(scp,
       144 | 145, -1, -1);
   sc_clear_screen(scp);
   break;

  case '(':
   tcp->esc = 5;
   return;
  }
 } else if (tcp->esc == 2) {
  if (c >= '0' && c <= '9') {
   if (tcp->num_param < MAX_ESC_PAR) {
    if (tcp->last_param != tcp->num_param) {
     tcp->last_param = tcp->num_param;
     tcp->param[tcp->num_param] = 0;
    } else {
     tcp->param[tcp->num_param] *= 10;
    }
    tcp->param[tcp->num_param] += c - '0';
    return;
   }
  }
  tcp->num_param = tcp->last_param + 1;
  switch (c) {

  case ';':
   if (tcp->num_param < MAX_ESC_PAR)
    return;
   break;

  case '=':
   tcp->esc = 3;
   tcp->last_param = -1;
   for (i = tcp->num_param; i < MAX_ESC_PAR; i++)
    tcp->param[i] = 1;
   tcp->num_param = 0;
   return;

  case 'A':
   sc_term_up(scp, tcp->param[0], 0);
   break;

  case 'B':
   sc_term_down(scp, tcp->param[0], 0);
   break;

  case 'C':
   sc_term_right(scp, tcp->param[0]);
   break;

  case 'D':
   sc_term_left(scp, tcp->param[0]);
   break;

  case 'E':
   n = tcp->param[0];
   if (n < 1)
    n = 1;
   sc_move_cursor(scp, 0, scp->ypos + n);
   break;

  case 'F':
   n = tcp->param[0];
   if (n < 1)
    n = 1;
   sc_move_cursor(scp, 0, scp->ypos - n);
   break;

  case 'f':
  case 'H':
   if (tcp->num_param == 0)
    sc_move_cursor(scp, 0, 0);
   else if (tcp->num_param == 2)
    sc_move_cursor(scp, tcp->param[1] - 1,
            tcp->param[0] - 1);
   break;

  case 'J':
   if (tcp->num_param == 0)
    n = 0;
   else
    n = tcp->param[0];
   sc_term_clr_eos(scp, n, sc->scr_map[0x20],
     tcp->cur_attr);
   break;

  case 'K':
   if (tcp->num_param == 0)
    n = 0;
   else
    n = tcp->param[0];
   sc_term_clr_eol(scp, n, sc->scr_map[0x20],
     tcp->cur_attr);
   break;

  case 'L':
   sc_term_ins_line(scp, scp->ypos, tcp->param[0],
      sc->scr_map[0x20], tcp->cur_attr, 0);
   break;

  case 'M':
   sc_term_del_line(scp, scp->ypos, tcp->param[0],
      sc->scr_map[0x20], tcp->cur_attr, 0);
   break;

  case 'P':
   sc_term_del_char(scp, tcp->param[0],
      sc->scr_map[0x20], tcp->cur_attr);
   break;

  case '@':
   sc_term_ins_char(scp, tcp->param[0],
      sc->scr_map[0x20], tcp->cur_attr);
   break;

  case 'S':
   sc_term_del_line(scp, 0, tcp->param[0],
      sc->scr_map[0x20], tcp->cur_attr, 0);
   break;

  case 'T':
   sc_term_ins_line(scp, 0, tcp->param[0],
      sc->scr_map[0x20], tcp->cur_attr, 0);
   break;

  case 'X':
   n = tcp->param[0];
   if (n < 1)
    n = 1;
   if (n > scp->xsize - scp->xpos)
    n = scp->xsize - scp->xpos;
   sc_vtb_erase(&scp->vtb, scp->cursor_pos, n,
         sc->scr_map[0x20], tcp->cur_attr);
   mark_for_update(scp, scp->cursor_pos);
   mark_for_update(scp, scp->cursor_pos + n - 1);
   break;

  case 'Z':
   sc_term_backtab(scp, tcp->param[0]);
   break;

  case '`':
   sc_term_col(scp, tcp->param[0]);
   break;

  case 'a':
   sc_term_right(scp, tcp->param[0]);
   break;

  case 'd':
   sc_term_row(scp, tcp->param[0]);
   break;

  case 'e':
   sc_term_down(scp, tcp->param[0], 0);
   break;

  case 'm':
   if (tcp->num_param == 0) {
    tcp->attr_mask = NORMAL_ATTR;
    tcp->cur_color = tcp->std_color;
    tcp->cur_attr = mask2attr(tcp);
    break;
   }
   for (i = 0; i < tcp->num_param; i++) {
    switch (n = tcp->param[i]) {
    case 0:
     tcp->attr_mask = NORMAL_ATTR;
     tcp->cur_color = tcp->std_color;
     tcp->cur_attr = mask2attr(tcp);
     break;
    case 1:
     tcp->attr_mask |= BOLD_ATTR;
     tcp->cur_attr = mask2attr(tcp);
     break;
    case 4:
     tcp->attr_mask |= UNDERLINE_ATTR;
     tcp->cur_attr = mask2attr(tcp);
     break;
    case 5:
     tcp->attr_mask |= BLINK_ATTR;
     tcp->cur_attr = mask2attr(tcp);
     break;
    case 7:
     tcp->attr_mask |= REVERSE_ATTR;
     tcp->cur_attr = mask2attr(tcp);
     break;
    case 22:
     tcp->attr_mask &= ~BOLD_ATTR;
     tcp->cur_attr = mask2attr(tcp);
     break;
    case 24:
     tcp->attr_mask &= ~UNDERLINE_ATTR;
     tcp->cur_attr = mask2attr(tcp);
     break;
    case 25:
     tcp->attr_mask &= ~BLINK_ATTR;
     tcp->cur_attr = mask2attr(tcp);
     break;
    case 27:
     tcp->attr_mask &= ~REVERSE_ATTR;
     tcp->cur_attr = mask2attr(tcp);
     break;
    case 30: case 31:
    case 32: case 33: case 34:
    case 35: case 36: case 37:
     tcp->attr_mask |= FG_CHANGED;
     tcp->cur_color.fg = ansi_col[n - 30];
     tcp->cur_attr = mask2attr(tcp);
     break;
    case 39:
     tcp->attr_mask &= ~(FG_CHANGED|BOLD_ATTR);
     tcp->cur_color.fg = tcp->std_color.fg;
     tcp->cur_attr = mask2attr(tcp);
     break;
    case 40: case 41:
    case 42: case 43: case 44:
    case 45: case 46: case 47:
     tcp->attr_mask |= BG_CHANGED;
     tcp->cur_color.bg = ansi_col[n - 40];
     tcp->cur_attr = mask2attr(tcp);
         break;
    case 49:
     tcp->attr_mask &= ~BG_CHANGED;
     tcp->cur_color.bg = tcp->std_color.bg;
     tcp->cur_attr = mask2attr(tcp);
     break;
    }
   }
   break;

  case 's':
   tcp->saved_xpos = scp->xpos;
   tcp->saved_ypos = scp->ypos;
   break;

  case 'u':
   if (tcp->saved_xpos >= 0 && tcp->saved_ypos >= 0)
    sc_move_cursor(scp, tcp->saved_xpos,
            tcp->saved_ypos);
   break;

  case 'x':
   if (tcp->num_param == 0)
    n = 0;
   else
    n = tcp->param[0];
   switch (n) {
   case 0:
    tcp->attr_mask = NORMAL_ATTR;
    tcp->cur_color = tcp->std_color
            = tcp->dflt_std_color;
    tcp->rev_color = tcp->dflt_rev_color;
    tcp->cur_attr = mask2attr(tcp);
    break;
   case 1:
    tcp->attr_mask &= ~BG_CHANGED;
    tcp->cur_color.bg = tcp->std_color.bg
        = ansi_col[tcp->param[1] & 0x0f];
    tcp->cur_attr = mask2attr(tcp);
    break;
   case 2:
    tcp->attr_mask &= ~FG_CHANGED;
    tcp->cur_color.fg = tcp->std_color.fg
        = ansi_col[tcp->param[1] & 0x0f];
    tcp->cur_attr = mask2attr(tcp);
    break;
   case 3:
    tcp->attr_mask &= ~(FG_CHANGED | BG_CHANGED);
    tcp->cur_color.fg = tcp->std_color.fg
        = tcp->param[1] & 0x0f;
    tcp->cur_color.bg = tcp->std_color.bg
        = (tcp->param[1] >> 4) & 0x0f;
    tcp->cur_attr = mask2attr(tcp);
    break;
   case 5:
    tcp->rev_color.bg = ansi_col[tcp->param[1] & 0x0f];
    tcp->cur_attr = mask2attr(tcp);
    break;
   case 6:
    tcp->rev_color.fg = ansi_col[tcp->param[1] & 0x0f];
    tcp->cur_attr = mask2attr(tcp);
    break;
   case 7:
    tcp->rev_color.fg = tcp->param[1] & 0x0f;
    tcp->rev_color.bg = (tcp->param[1] >> 4) & 0x0f;
    tcp->cur_attr = mask2attr(tcp);
    break;
   }
   break;

  case 'z':
   if (tcp->num_param == 1)
    sc_switch_scr(sc, tcp->param[0]);
   break;
  }
 } else if (tcp->esc == 3) {
  if (c >= '0' && c <= '9') {
   if (tcp->num_param < MAX_ESC_PAR) {
    if (tcp->last_param != tcp->num_param) {
     tcp->last_param = tcp->num_param;
     tcp->param[tcp->num_param] = 0;
    } else {
     tcp->param[tcp->num_param] *= 10;
    }
    tcp->param[tcp->num_param] += c - '0';
    return;
   }
  }
  tcp->num_param = tcp->last_param + 1;
  switch (c) {

  case ';':
   if (tcp->num_param < MAX_ESC_PAR)
    return;
   break;

  case 'A':
   if (tcp->num_param == 1) {
    scp->border=tcp->param[0] & 0xff;
    if (scp == sc->cur_scp)
     sc_set_border(scp, scp->border);
   }
   break;

  case 'B':
   if (tcp->num_param == 2) {
    scp->bell_pitch = tcp->param[0];
    scp->bell_duration =
        (tcp->param[1] * hz + 99) / 100;
   }
   break;

  case 'C':
   i = spltty();
   n = tcp->num_param;
   v0 = tcp->param[0];
   v1 = tcp->param[1];
   v2 = tcp->param[2];
   switch (n) {
   case 1:
    if (v0 < sizeof(cattrs)/sizeof(cattrs[0]))
     v0 = cattrs[v0];
    else
     v0 = cattrs[v0 & 0x3];
    sc_change_cursor_shape(scp, v0, -1, -1);
    break;
   case 2:
    v2 = 0;
    v0 &= 0x1f;
    v1 &= 0x1f;

   case 3:
    if (v2 == 0)
     sc_change_cursor_shape(scp, -1,
         scp->font_size - v1 - 1,
         v1 - v0 + 1);
    else if (v2 == 1)
     sc_change_cursor_shape(scp, -1,
         v0, v1 - v0 + 1);
    break;
   }
   splx(i);
   break;

  case 'F':
   if (tcp->num_param == 1) {
    tcp->attr_mask &= ~FG_CHANGED;
    tcp->cur_color.fg = tcp->std_color.fg
        = tcp->param[0] & 0x0f;
    tcp->cur_attr = mask2attr(tcp);
   }
   break;

  case 'G':
   if (tcp->num_param == 1) {
    tcp->attr_mask &= ~BG_CHANGED;
    tcp->cur_color.bg = tcp->std_color.bg
        = tcp->param[0] & 0x0f;
    tcp->cur_attr = mask2attr(tcp);
   }
   break;

  case 'H':
   if (tcp->num_param == 1) {
    tcp->rev_color.fg = tcp->param[0] & 0x0f;
    tcp->cur_attr = mask2attr(tcp);
   }
   break;

  case 'I':
   if (tcp->num_param == 1) {
    tcp->rev_color.bg = tcp->param[0] & 0x0f;
    tcp->cur_attr = mask2attr(tcp);
   }
   break;

  case 'S':
   i = spltty();
   n = tcp->num_param;
   v0 = tcp->param[0];
   switch (n) {
   case 0:
    v0 = 0;

   case 1:
    if (v0 < sizeof(tcattrs)/sizeof(tcattrs[0]))
     sc_change_cursor_shape(scp,
         tcattrs[v0], -1, -1);
    break;
   }
   splx(i);
   break;
  }




 } else if (tcp->esc == 5) {
  switch (c) {
  case 'B':
   break;

  default:
   break;
  }
 }
 tcp->esc = 0;
}
