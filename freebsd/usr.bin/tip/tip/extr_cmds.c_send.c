
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDELAY ;
 int ECHOCHECK ;
 int ETIMEOUT ;
 int FD ;
 int LDELAY ;
 int alarm (unsigned int) ;
 int boolean (int ) ;
 char* ctrl (int) ;
 scalar_t__ lvalue (int ) ;
 char null ;
 scalar_t__ number (int ) ;
 int parwrite (int ,char*,int) ;
 int printf (char*,char*) ;
 int read (int ,char*,int) ;
 scalar_t__ timedout ;
 int usleep (scalar_t__) ;
 int value (int ) ;

__attribute__((used)) static void
send(int c)
{
 char cc;
 int retry = 0;

 cc = c;
 parwrite(FD, &cc, 1);
 if (number(value(CDELAY)) > 0 && c != '\r')
  usleep(number(value(CDELAY)));
 if (!boolean(value(ECHOCHECK))) {
  if (number(value(LDELAY)) > 0 && c == '\r')
   usleep(number(value(LDELAY)));
  return;
 }
tryagain:
 timedout = 0;
 alarm((unsigned int)lvalue(ETIMEOUT));
 read(FD, &cc, 1);
 alarm(0);
 if (timedout) {
  printf("\r\ntimeout error (%s)\r\n", ctrl(c));
  if (retry++ > 3)
   return;
  parwrite(FD, &null, 1);
  goto tryagain;
 }
}
