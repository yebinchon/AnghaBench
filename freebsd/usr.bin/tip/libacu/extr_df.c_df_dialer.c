
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cflag; } ;


 int B1200 ;
 int FD ;
 int HUPCL ;
 int SIGALRM ;
 int Sjbuf ;
 int TCIOFLUSH ;
 int TCSAFLUSH ;
 int TCSANOW ;
 int TIOCMBIC ;
 int TIOCMBIS ;
 int TIOCM_ST ;
 int VERBOSE ;
 int alarm (int) ;
 int alrm_timeout ;
 scalar_t__ boolean (int ) ;
 int cfgetospeed (struct termios*) ;
 int cfsetispeed (struct termios*,int) ;
 int cfsetospeed (struct termios*,int) ;
 int df_disconnect () ;
 int fflush (int ) ;
 int ioctl (int,int ,int*) ;
 int printf (char*) ;
 int read (int,char*,int) ;
 scalar_t__ setjmp (int ) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int stdout ;
 int strlen (char*) ;
 int tcflush (int,int ) ;
 int tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int ,struct termios*) ;
 int value (int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static int
df_dialer(char *num, char *acu, int df03)
{
 int f = FD;
 struct termios cntrl;
 int speed = 0;
 char c = '\0';

 tcgetattr(f, &cntrl);
 cntrl.c_cflag |= HUPCL;
 tcsetattr(f, TCSANOW, &cntrl);
 if (setjmp(Sjbuf)) {
  printf("connection timed out\r\n");
  df_disconnect();
  return (0);
 }
 if (boolean(value(VERBOSE)))
  printf("\ndialing...");
 fflush(stdout);
 signal(SIGALRM, alrm_timeout);
 alarm(5 * strlen(num) + 10);
 tcflush(f, TCIOFLUSH);
 write(f, "\001", 1);
 sleep(1);
 write(f, "\002", 1);
 write(f, num, strlen(num));
 read(f, &c, 1);







 return (c == 'A');
}
