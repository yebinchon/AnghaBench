
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIALTIMEOUT ;
 char* DISCONNECT_CMD ;
 int FD ;
 int HOST ;
 int VERBOSE ;
 int biz31_disconnect () ;
 int bizsync (int ) ;
 scalar_t__ boolean (int ) ;
 int delock (int ) ;
 int detect (char*) ;
 int echo (char*) ;
 int exit (int ) ;
 int flush (char*) ;
 int logent (int ,char*,char*,char*) ;
 int number (int ) ;
 int printf (char*) ;
 int snprintf (char*,int,char*,int ) ;
 scalar_t__ timeout ;
 int uucplock ;
 int value (int ) ;

__attribute__((used)) static int
biz_dialer(char *num, char *mod)
{
 int connected = 0;

 if (!bizsync(FD)) {
  logent(value(HOST), "", "biz", "out of sync");
  printf("bizcomp out of sync\n");
  delock(uucplock);
  exit(0);
 }
 if (boolean(value(VERBOSE)))
  printf("\nstarting call...");
 echo("#\rk$\r$\n");
 echo("$>$.$ #\r");
 echo(mod);
 echo("$\r$\n");
 echo("$>$.$ #\re$ ");
 echo(DISCONNECT_CMD);
 echo("\r$\n$\r$\n");
 echo("$>$.$ #\rr$ ");
 echo(num);
 echo("\r$\n");
 if (boolean(value(VERBOSE)))
  printf("ringing...");





 connected = detect(" ");
 if (!connected)
  flush(" NO CONNECTION\r\n\07\r\n");
 else
  flush("CONNECTION\r\n\07");
 if (timeout)
  biz31_disconnect();
 return (connected);
}
