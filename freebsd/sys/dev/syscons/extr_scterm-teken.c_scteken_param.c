
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tcattrs ;
struct TYPE_6__ {int const flags; } ;
struct TYPE_7__ {unsigned int border; unsigned int mouse_level; int bell_duration; int bell_pitch; TYPE_3__* sc; TYPE_1__ base_curs_attr; int font_size; } ;
typedef TYPE_2__ scr_stat ;
typedef int cattrs ;
struct TYPE_8__ {TYPE_2__* cur_scp; } ;
 int TP_SETBELLPD_DURATION (unsigned int) ;
 int TP_SETBELLPD_PITCH (unsigned int) ;





 int sc_change_cursor_shape (TYPE_2__*,int const,int,int) ;
 int sc_set_border (TYPE_2__*,unsigned int) ;
 int sc_switch_scr (TYPE_3__*,unsigned int) ;

__attribute__((used)) static void
scteken_param(void *arg, int cmd, unsigned int value)
{
 static int cattrs[] = {
  0,
  139,
  138,
  138 | 139,
  135,
  137,
 };
 static int tcattrs[] = {
  135 | 136,
  137 | 136,
 };
 scr_stat *scp = arg;
 int flags, n, v0, v1, v2;

 switch (cmd) {
 case 132:
  scp->border = value & 0xff;
  if (scp == scp->sc->cur_scp)
   sc_set_border(scp, scp->border);
  break;
 case 131:
  n = value & 0xff;
  v0 = (value >> 8) & 0xff;
  v1 = (value >> 16) & 0xff;
  v2 = (value >> 24) & 0xff;
  switch (n) {
  case 1:
   if (v0 < sizeof(cattrs) / sizeof(cattrs[0]))
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
  break;
 case 130:
  if (value < sizeof(tcattrs) / sizeof(tcattrs[0]))
   sc_change_cursor_shape(scp, tcattrs[value], -1, -1);
  else if (value == 2) {
   sc_change_cursor_shape(scp,
       135 | 136, -1, -1);
   flags = scp->base_curs_attr.flags ^ 139;
   sc_change_cursor_shape(scp,
       flags | 136, -1, -1);
  }
  break;
 case 129:
  if (value != 0)
   flags = scp->base_curs_attr.flags & ~137;
  else
   flags = scp->base_curs_attr.flags | 137;
  sc_change_cursor_shape(scp, flags | 136, -1, -1);
  break;
 case 128:
  sc_switch_scr(scp->sc, value);
  break;
 case 133:
  scp->bell_pitch = TP_SETBELLPD_PITCH(value);
  scp->bell_duration = TP_SETBELLPD_DURATION(value);
  break;
 case 134:
  scp->mouse_level = value;
  break;
 }
}
