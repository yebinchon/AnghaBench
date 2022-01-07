
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int tp_col; int tp_row; } ;
struct TYPE_7__ {scalar_t__ tp_col; scalar_t__ tp_row; } ;
struct TYPE_9__ {TYPE_4__ tr_end; TYPE_1__ tr_begin; } ;
typedef TYPE_3__ term_rect_t ;
typedef int term_attr_t ;
typedef int teken_char_t ;
struct winsize {int ws_col; int ws_row; } ;
struct terminal {int tm_flags; TYPE_2__* tm_class; int tm_emulator; struct winsize tm_winsize; } ;
struct TYPE_8__ {int (* tc_fill ) (struct terminal*,TYPE_3__*,int ) ;} ;


 int TCHAR_CREATE (int ,int const*) ;
 int TERMINAL_LOCK (struct terminal*) ;
 int TERMINAL_UNLOCK (struct terminal*) ;
 int TF_MUTE ;
 int stub1 (struct terminal*,TYPE_3__*,int ) ;
 int teken_set_winsize (int *,TYPE_4__*) ;
 int teken_set_winsize_noreset (int *,TYPE_4__*) ;
 int terminal_sync_ttysize (struct terminal*) ;

void
terminal_set_winsize_blank(struct terminal *tm, const struct winsize *size,
    int blank, const term_attr_t *attr)
{
 term_rect_t r;

 tm->tm_winsize = *size;

 r.tr_begin.tp_row = r.tr_begin.tp_col = 0;
 r.tr_end.tp_row = size->ws_row;
 r.tr_end.tp_col = size->ws_col;

 TERMINAL_LOCK(tm);
 if (blank == 0)
  teken_set_winsize_noreset(&tm->tm_emulator, &r.tr_end);
 else
  teken_set_winsize(&tm->tm_emulator, &r.tr_end);
 TERMINAL_UNLOCK(tm);

 if ((blank != 0) && !(tm->tm_flags & TF_MUTE))
  tm->tm_class->tc_fill(tm, &r,
      TCHAR_CREATE((teken_char_t)' ', attr));

 terminal_sync_ttysize(tm);
}
