
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int dummy; } ;
struct terminal {int tm_flags; TYPE_1__* tm_class; int tm_emulator; } ;
struct TYPE_2__ {int (* tc_bell ) (struct terminal*) ;int (* tc_done ) (struct terminal*) ;} ;


 int TERMINAL_LOCK_TTY (struct terminal*) ;
 int TERMINAL_UNLOCK_TTY (struct terminal*) ;
 unsigned int TF_BELL ;
 int TF_MUTE ;
 int stub1 (struct terminal*) ;
 int stub2 (struct terminal*) ;
 int teken_input (int *,char*,size_t) ;
 struct terminal* tty_softc (struct tty*) ;
 size_t ttydisc_getc (struct tty*,char*,int) ;

__attribute__((used)) static void
termtty_outwakeup(struct tty *tp)
{
 struct terminal *tm = tty_softc(tp);
 char obuf[128];
 size_t olen;
 unsigned int flags = 0;

 while ((olen = ttydisc_getc(tp, obuf, sizeof obuf)) > 0) {
  TERMINAL_LOCK_TTY(tm);
  if (!(tm->tm_flags & TF_MUTE)) {
   tm->tm_flags &= ~TF_BELL;
   teken_input(&tm->tm_emulator, obuf, olen);
   flags |= tm->tm_flags;
  }
  TERMINAL_UNLOCK_TTY(tm);
 }

 TERMINAL_LOCK_TTY(tm);
 if (!(tm->tm_flags & TF_MUTE))
  tm->tm_class->tc_done(tm);
 TERMINAL_UNLOCK_TTY(tm);
 if (flags & TF_BELL)
  tm->tm_class->tc_bell(tm);
}
