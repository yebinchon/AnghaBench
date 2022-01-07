
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;
struct baud_msg {char* msg; int baud; } ;
typedef int sig_t ;
typedef int dialer_buf ;


 int DIALTIMEOUT ;
 int FD ;
 int SIGALRM ;
 int TCSAFLUSH ;
 int VERBOSE ;
 int alarm (int ) ;
 struct baud_msg* baud_msg ;
 scalar_t__ boolean (int ) ;
 int bzero (char*,int) ;
 int cfsetispeed (struct termios*,int ) ;
 int cfsetospeed (struct termios*,int ) ;
 scalar_t__ cour_swallow (char*) ;
 scalar_t__ dialtimeout ;
 int number (int ) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int read (int ,char*,int) ;
 scalar_t__ setjmp (int ) ;
 int sigALRM ;
 int signal (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 int timeoutbuf ;
 int value (int ) ;

__attribute__((used)) static int
cour_connect(void)
{
 char c;
 int nc, nl, n;
 char dialer_buf[64];
 struct baud_msg *bm;
 sig_t f;

 if (cour_swallow("\r\n") == 0)
  return (0);
 f = signal(SIGALRM, sigALRM);
again:
 nc = 0; nl = sizeof(dialer_buf)-1;
 bzero(dialer_buf, sizeof(dialer_buf));
 dialtimeout = 0;
 for (nc = 0, nl = sizeof(dialer_buf)-1 ; nl > 0 ; nc++, nl--) {
  if (setjmp(timeoutbuf))
   break;
  alarm(number(value(DIALTIMEOUT)));
  n = read(FD, &c, 1);
  alarm(0);
  if (n <= 0)
   break;
  c &= 0x7f;
  if (c == '\r') {
   if (cour_swallow("\n") == 0)
    break;
   if (!dialer_buf[0])
    goto again;
   if (strcmp(dialer_buf, "RINGING") == 0 &&
       boolean(value(VERBOSE))) {



    goto again;
   }
   if (strncmp(dialer_buf, "CONNECT",
        sizeof("CONNECT")-1) != 0)
    break;
   for (bm = baud_msg ; bm->msg ; bm++)
    if (strcmp(bm->msg,
        dialer_buf+sizeof("CONNECT")-1) == 0) {
     struct termios cntrl;

     tcgetattr(FD, &cntrl);
     cfsetospeed(&cntrl, bm->baud);
     cfsetispeed(&cntrl, bm->baud);
     tcsetattr(FD, TCSAFLUSH, &cntrl);
     signal(SIGALRM, f);




     return (1);
    }
   break;
  }
  dialer_buf[nc] = c;




 }
 printf("%s\r\n", dialer_buf);
 signal(SIGALRM, f);
 return (0);
}
