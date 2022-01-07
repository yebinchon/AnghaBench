
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear () ;
 int clear_ok ;
 char* gbuf ;
 char* getenv (char*) ;
 int opt_interactive ;
 int set_tty () ;
 int tbuf ;
 int tgetent (int ,char*) ;
 scalar_t__ tgetstr (char*,char**) ;

__attribute__((used)) static void
setup_scr(void)
{
 char *cbuf = gbuf, *term;

 if (!opt_interactive)
  return;
 if ((term = getenv("TERM")))
  if (tgetent(tbuf, term) == 1)
   if (tgetstr("cl", &cbuf))
    clear_ok = 1;
 set_tty();
 clear();
}
