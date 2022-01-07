
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cbuf ;


 int DIALTIMEOUT ;
 int FD ;
 int HOST ;
 int VERBOSE ;
 int biz22_disconnect () ;
 scalar_t__ boolean (int ) ;
 scalar_t__ cmd (char*) ;
 int detect (char*) ;
 scalar_t__ dialtimeout ;
 int logent (int ,char*,char*,char*) ;
 char* number (int ) ;
 int printf (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 int value (int ) ;
 int write (int ,char*,int ) ;

__attribute__((used)) static int
biz_dialer(char *num, char *mod)
{
 int connected = 0;
 char cbuf[40];

 if (boolean(value(VERBOSE)))
  printf("\nstarting call...");




 if (cmd("\02K\r")) {
  printf("can't initialize bizcomp...");
  return (0);
 }
 (void)strlcpy(cbuf, "\02.\r", sizeof cbuf);
 cbuf[1] = *mod;
 if (cmd(cbuf)) {
  printf("can't set dialing mode...");
  return (0);
 }
 (void)snprintf(cbuf, sizeof(cbuf), "\02D%s\r", num);
 write(FD, cbuf, strlen(cbuf));
 if (!detect("7\r")) {
  printf("can't get dial tone...");
  return (0);
 }
 if (boolean(value(VERBOSE)))
  printf("ringing...");





 connected = detect("1\r");
 if (dialtimeout)
  biz22_disconnect();
 return (connected);
}
