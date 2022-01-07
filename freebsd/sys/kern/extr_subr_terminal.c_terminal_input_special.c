
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct terminal {int tm_emulator; struct tty* tm_tty; } ;


 int strlen (char const*) ;
 char* teken_get_sequence (int *,unsigned int) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydisc_rint_done (struct tty*) ;
 int ttydisc_rint_simple (struct tty*,char const*,int ) ;

void
terminal_input_special(struct terminal *tm, unsigned int k)
{
 struct tty *tp;
 const char *str;

 tp = tm->tm_tty;
 if (tp == ((void*)0))
  return;

 str = teken_get_sequence(&tm->tm_emulator, k);
 if (str == ((void*)0))
  return;

 tty_lock(tp);
 ttydisc_rint_simple(tp, str, strlen(str));
 ttydisc_rint_done(tp);
 tty_unlock(tp);
}
