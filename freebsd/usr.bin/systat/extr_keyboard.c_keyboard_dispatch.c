
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMDLINE ;
 int CTRL (char) ;
 scalar_t__ EINTR ;
 int ERR ;
 int clrtoeol () ;
 int col ;
 int curscr ;
 int erasechar () ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ isprint (int) ;
 scalar_t__ isspace (char) ;
 int killchar () ;
 char* line ;
 int move (int ,int) ;
 int mvaddch (int ,int,int) ;
 int status () ;
 int wrefresh (int ) ;

__attribute__((used)) static int
keyboard_dispatch(int ch)
{

 if (ch == ERR) {
  if (errno == EINTR)
   return 0;
  exit(1);
 }
 if (ch >= 'A' && ch <= 'Z')
  ch += 'a' - 'A';
 if (col == 0) {
  if (ch == CTRL('l')) {
   wrefresh(curscr);
   return 0;
  }
  if (ch == CTRL('g')) {
   status();
   return 0;
  }
  if (ch != ':')
   return 0;
  move(CMDLINE, 0);
  clrtoeol();
 }
 if (ch == erasechar() && col > 0) {
  if (col == 1 && line[0] == ':')
   return 0;
  col--;
  goto doerase;
 }
 if (ch == CTRL('w') && col > 0) {
  while (--col >= 0 && isspace(line[col]))
   ;
  col++;
  while (--col >= 0 && !isspace(line[col]))
   if (col == 0 && line[0] == ':')
    return 1;
  col++;
  goto doerase;
 }
 if (ch == killchar() && col > 0) {
  col = 0;
  if (line[0] == ':')
   col++;
doerase:
  move(CMDLINE, col);
  clrtoeol();
  return 0;
 }
 if (isprint(ch) || ch == ' ') {
  line[col] = ch;
  mvaddch(CMDLINE, col, ch);
  col++;
 }

 if (col == 0 || (ch != '\r' && ch != '\n'))
  return 0;

 return 1;
}
