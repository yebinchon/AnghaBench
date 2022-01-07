
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
typedef int fd_set ;


 int CMDLINE ;
 scalar_t__ EINTR ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ STDIN_FILENO ;
 size_t col ;
 int command (char*) ;
 int delay ;
 int display () ;
 scalar_t__ errno ;
 int exit (int) ;
 int getch () ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ keyboard_dispatch (int) ;
 char* line ;
 int move (int ,int ) ;
 int refresh () ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;

int
keyboard(void)
{
 int ch, n;
 struct timeval last, intvl, now, tm;
 fd_set rfds;


 gettimeofday(&last, ((void*)0));
 intvl.tv_sec = delay / 1000000;
 intvl.tv_usec = delay % 1000000;
 for (;;) {
  col = 0;
  move(CMDLINE, 0);
  for (;;) {

   (void)gettimeofday(&now, ((void*)0));
   tm.tv_sec = last.tv_sec + intvl.tv_sec - now.tv_sec;
   tm.tv_usec = last.tv_usec + intvl.tv_usec - now.tv_usec;
   while (tm.tv_usec < 0) {
    tm.tv_usec += 1000000;
    tm.tv_sec--;
   }
   while (tm.tv_usec >= 1000000) {
    tm.tv_usec -= 1000000;
    tm.tv_sec++;
   }
   if (tm.tv_sec < 0) {

    display();
    gettimeofday(&last, ((void*)0));
    continue;
   }


   FD_ZERO(&rfds);
   FD_SET(STDIN_FILENO, &rfds);
   n = select(STDIN_FILENO + 1, &rfds, ((void*)0), ((void*)0), &tm);

   if (n > 0) {

    ch = getch();

    if (keyboard_dispatch(ch) == 0) {
     refresh();
     continue;
    }

    line[col] = '\0';
    command(line + 1);

    intvl.tv_sec = delay / 1000000;
    intvl.tv_usec = delay % 1000000;
    refresh();
    break;
   }

   if (n < 0 && errno != EINTR)
    exit(1);


   display();
   gettimeofday(&last, ((void*)0));
  }
 }
}
