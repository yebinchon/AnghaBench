
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int SIGINT ;
 int SIGTERM ;
 int TRUE ;
 int cbreak () ;
 int cleanup (int ) ;
 int clear () ;
 int curs_set (int ) ;
 int exit (int) ;
 int init_globals () ;
 int initscr () ;
 int intrflush (int ,int ) ;
 int keypad (int ,int ) ;
 int noecho () ;
 int nonl () ;
 int own (char*) ;
 int printf (char*,char*) ;
 int refresh () ;
 int signal (int ,int (*) (int )) ;
 int stdscr ;

int main(int argc, char *argv[]) {


 if (argc < 2) {
  printf("Usage: %s <iface>\n", argv[0]);
  exit(1);
 }

 init_globals();

 initscr(); cbreak(); noecho();

 nonl();
 intrflush(stdscr, FALSE);
 keypad(stdscr, TRUE);

 curs_set(0);

 clear();
 refresh();

 signal(SIGINT, cleanup);
 signal(SIGTERM, cleanup);

 own(argv[1]);

 cleanup(0);
 exit(0);
}
