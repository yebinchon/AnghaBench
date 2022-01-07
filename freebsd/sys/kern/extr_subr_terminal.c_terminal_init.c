
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct terminal {int tm_flags; int tm_emulator; int tm_mtx; } ;
struct TYPE_5__ {int ta_fgcolor; int ta_bgcolor; } ;
struct TYPE_4__ {int ta_fgcolor; int ta_bgcolor; } ;


 int MTX_SPIN ;
 int TC_BLACK ;
 int TC_LIGHT ;
 int TC_NCOLORS ;
 int TC_WHITE ;
 int TF_CONS ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 TYPE_1__ default_message ;
 TYPE_2__ kernel_message ;
 int mtx_init (int *,char*,int *,int ) ;
 int teken_init (int *,int *,struct terminal*) ;
 int teken_set_defattr (int *,TYPE_1__*) ;
 int terminal_drawmethods ;

__attribute__((used)) static void
terminal_init(struct terminal *tm)
{
 int fg, bg;

 if (tm->tm_flags & TF_CONS)
  mtx_init(&tm->tm_mtx, "trmlck", ((void*)0), MTX_SPIN);

 teken_init(&tm->tm_emulator, &terminal_drawmethods, tm);

 fg = bg = -1;
 TUNABLE_INT_FETCH("teken.fg_color", &fg);
 TUNABLE_INT_FETCH("teken.bg_color", &bg);

 if (fg != -1) {
  default_message.ta_fgcolor = fg;
  kernel_message.ta_fgcolor = fg;
 }
 if (bg != -1) {
  default_message.ta_bgcolor = bg;
  kernel_message.ta_bgcolor = bg;
 }

 if (default_message.ta_bgcolor == TC_WHITE) {
  default_message.ta_bgcolor |= TC_LIGHT;
  kernel_message.ta_bgcolor |= TC_LIGHT;
 }

 if (default_message.ta_bgcolor == TC_BLACK &&
     default_message.ta_fgcolor < TC_NCOLORS)
  kernel_message.ta_fgcolor |= TC_LIGHT;
 teken_set_defattr(&tm->tm_emulator, &default_message);
}
