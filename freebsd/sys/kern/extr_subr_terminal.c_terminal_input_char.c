
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int term_char_t ;
struct tty {int dummy; } ;
struct terminal {struct tty* tm_tty; } ;


 int TCHAR_CHARACTER (int) ;
 int TCHAR_FORMAT (int) ;
 int TF_CJK_RIGHT ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttydisc_rint (struct tty*,int,int ) ;
 int ttydisc_rint_done (struct tty*) ;
 int ttydisc_rint_simple (struct tty*,char*,int) ;

void
terminal_input_char(struct terminal *tm, term_char_t c)
{
 struct tty *tp;

 tp = tm->tm_tty;
 if (tp == ((void*)0))
  return;






 if (TCHAR_FORMAT(c) & TF_CJK_RIGHT)
  return;
 c = TCHAR_CHARACTER(c);

 tty_lock(tp);



 if (c < 0x80) {
  ttydisc_rint(tp, c, 0);
 } else if (c < 0x800) {
  char str[2] = {
   0xc0 | (c >> 6),
   0x80 | (c & 0x3f)
  };

  ttydisc_rint_simple(tp, str, sizeof str);
 } else if (c < 0x10000) {
  char str[3] = {
   0xe0 | (c >> 12),
   0x80 | ((c >> 6) & 0x3f),
   0x80 | (c & 0x3f)
  };

  ttydisc_rint_simple(tp, str, sizeof str);
 } else {
  char str[4] = {
   0xf0 | (c >> 18),
   0x80 | ((c >> 12) & 0x3f),
   0x80 | ((c >> 6) & 0x3f),
   0x80 | (c & 0x3f)
  };

  ttydisc_rint_simple(tp, str, sizeof str);
 }
 ttydisc_rint_done(tp);
 tty_unlock(tp);
}
