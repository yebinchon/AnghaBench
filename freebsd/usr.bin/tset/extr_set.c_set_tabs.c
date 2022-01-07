
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Columns ;
 int Lines ;
 int fprintf (int ,char*,char*) ;
 int outc ;
 int putc (char,int ) ;
 int stderr ;
 char* tgetstr (char*,char**) ;
 char* tgoto (char*,int,int) ;
 int tputs (char const*,int,int ) ;

int
set_tabs(void)
{
 int c;
 char *capsp, *clear_tabs;
 char *set_column, *set_pos, *Set_tab;
 char caps[1024];
 const char *tg_out;

 capsp = caps;
 Set_tab = tgetstr("st", &capsp);

 if (Set_tab && (clear_tabs = tgetstr("ct", &capsp))) {
  (void)putc('\r', stderr);
  tputs(clear_tabs, 0, outc);
 }

 set_column = tgetstr("ch", &capsp);
 set_pos = set_column ? ((void*)0) : tgetstr("cm", &capsp);

 if (Set_tab) {
  for (c = 8; c < Columns; c += 8) {




   tg_out = "OOPS";
   if (set_column)
    tg_out = tgoto(set_column, 0, c);
   if (*tg_out == 'O' && set_pos)
    tg_out = tgoto(set_pos, c, Lines - 1);
   if (*tg_out != 'O')
    tputs(tg_out, 1, outc);
   else
    (void)fprintf(stderr, "%s", "        ");

   tputs(Set_tab, 0, outc);
  }
  putc('\r', stderr);
  return (1);
 }
 return (0);
}
