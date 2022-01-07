
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int teken_attr_t ;
struct terminal {int tm_flags; TYPE_1__* tm_class; int tm_emulator; } ;
struct consdev {struct terminal* cn_arg; } ;
struct TYPE_2__ {int (* tc_done ) (struct terminal*) ;} ;


 int TERMINAL_LOCK_CONS (struct terminal*) ;
 int TERMINAL_UNLOCK_CONS (struct terminal*) ;
 int TF_MUTE ;
 int kernel_message ;
 int stub1 (struct terminal*) ;
 int * teken_get_curattr (int *) ;
 int teken_input (int *,char*,int) ;
 int teken_set_curattr (int *,int *) ;

__attribute__((used)) static void
termcn_cnputc(struct consdev *cp, int c)
{
 struct terminal *tm = cp->cn_arg;
 teken_attr_t backup;
 char cv = c;

 TERMINAL_LOCK_CONS(tm);
 if (!(tm->tm_flags & TF_MUTE)) {
  backup = *teken_get_curattr(&tm->tm_emulator);
  teken_set_curattr(&tm->tm_emulator, &kernel_message);
  teken_input(&tm->tm_emulator, &cv, 1);
  teken_set_curattr(&tm->tm_emulator, &backup);
  tm->tm_class->tc_done(tm);
 }
 TERMINAL_UNLOCK_CONS(tm);
}
