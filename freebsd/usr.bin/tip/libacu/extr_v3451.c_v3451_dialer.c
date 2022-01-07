
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termios {int dummy; } ;
typedef int sig_t ;
struct TYPE_2__ {int c_cflag; } ;


 int BAUDRATE ;
 int FD ;
 int HOST ;
 int HUPCL ;
 int SIGINT ;
 int SIG_IGN ;
 int TCIOFLUSH ;
 int TCSANOW ;
 int VERBOSE ;
 scalar_t__ boolean (int ) ;
 int expect (char*) ;
 int logent (int ,char*,char*,char*) ;
 int number (int ) ;
 int printf (char*) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,char*) ;
 int tcflush (int ,int ) ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 TYPE_1__ term ;
 int value (int ) ;
 int vawrite (char*,int) ;

int
v3451_dialer(char *num, char *acu)
{
 sig_t func;
 int ok;
 int slow = number(value(BAUDRATE)) < 1200;
 char phone[50];
 struct termios cntrl;




 vawrite("I\r", 1 + slow);
 vawrite("I\r", 1 + slow);
 vawrite("I\r", 1 + slow);
 vawrite("\005\r", 2 + slow);
 if (!expect("READY")) {
  printf("can't synchronize with vadic 3451\n");



  return (0);
 }
 tcgetattr(FD, &cntrl);
 term.c_cflag |= HUPCL;
 tcsetattr(FD, TCSANOW, &cntrl);
 sleep(1);
 vawrite("D\r", 2 + slow);
 if (!expect("NUMBER?")) {
  printf("Vadic will not accept dial command\n");



  return (0);
 }
 (void)snprintf(phone, sizeof phone, "%s\r", num);
 vawrite(phone, 1 + slow);
 if (!expect(phone)) {
  printf("Vadic will not accept phone number\n");



  return (0);
 }
 func = signal(SIGINT,SIG_IGN);





 vawrite("\r", 1 + slow);
 vawrite("\r", 1 + slow);
 if (!expect("DIALING:")) {
  printf("Vadic failed to dial\n");



  return (0);
 }
 if (boolean(value(VERBOSE)))
  printf("\ndialing...");
 ok = expect("ON LINE");
 signal(SIGINT, func);
 if (!ok) {
  printf("call failed\n");



  return (0);
 }
 tcflush(FD, TCIOFLUSH);
 return (1);
}
