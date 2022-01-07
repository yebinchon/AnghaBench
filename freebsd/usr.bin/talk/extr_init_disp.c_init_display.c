
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sigaction {int sa_mask; } ;
struct TYPE_4__ {int x_nlines; void* x_ncols; void* x_win; } ;
struct TYPE_3__ {int x_nlines; void* x_ncols; void* x_win; } ;


 void* COLS ;
 int LINES ;
 int SIGALRM ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTSTP ;
 int SIGWINCH ;
 int TRUE ;
 int box (void*,char,char) ;
 int clear () ;
 int crmode () ;
 char* current_state ;
 int curses_initialized ;
 int errx (int,char*) ;
 TYPE_2__ his_win ;
 int idlok (void*,int ) ;
 int * initscr () ;
 void* line_win ;
 TYPE_1__ my_win ;
 void* newwin (int,void*,int,int ) ;
 int noecho () ;
 int refresh () ;
 int scrollok (void*,int ) ;
 int sig_sent ;
 int sig_winch ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigaddset (int *,int ) ;
 int signal (int ,int ) ;
 int wclear (void*) ;
 int whline (void*,int ,void*) ;
 int wrefresh (void*) ;

void
init_display(void)
{
 struct sigaction sa;

 if (initscr() == ((void*)0))
  errx(1, "Terminal type unset or lacking necessary features.");
 (void) sigaction(SIGTSTP, (struct sigaction *)0, &sa);
 sigaddset(&sa.sa_mask, SIGALRM);
 (void) sigaction(SIGTSTP, &sa, (struct sigaction *)0);
 curses_initialized = 1;
 clear();
 refresh();
 noecho();
 crmode();
 signal(SIGINT, sig_sent);
 signal(SIGPIPE, sig_sent);
 signal(SIGWINCH, sig_winch);

 my_win.x_nlines = LINES / 2;
 my_win.x_ncols = COLS;
 my_win.x_win = newwin(my_win.x_nlines, my_win.x_ncols, 0, 0);
 idlok(my_win.x_win, TRUE);
 scrollok(my_win.x_win, TRUE);
 wclear(my_win.x_win);

 his_win.x_nlines = LINES / 2 - 1;
 his_win.x_ncols = COLS;
 his_win.x_win = newwin(his_win.x_nlines, his_win.x_ncols,
     my_win.x_nlines+1, 0);
 idlok(my_win.x_win, TRUE);
 scrollok(his_win.x_win, TRUE);
 wclear(his_win.x_win);

 line_win = newwin(1, COLS, my_win.x_nlines, 0);



 box(line_win, '-', '-');

 wrefresh(line_win);

 current_state = "No connection yet";
}
