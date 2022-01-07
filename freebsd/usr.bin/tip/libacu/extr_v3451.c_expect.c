
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int DIALTIMEOUT ;
 int FD ;
 int SIGALRM ;
 int Sjbuf ;
 int alarm (int) ;
 int alarmtr ;
 scalar_t__ notin (char*,char*) ;
 int number (int ) ;
 scalar_t__ read (int ,char*,int) ;
 scalar_t__ setjmp (int ) ;
 int signal (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int value (int ) ;

__attribute__((used)) static int
expect(char *cp)
{
 char buf[300];
 char *rp = buf;
 int timeout = 30, online = 0;

 if (strcmp(cp, "\"\"") == 0)
  return (1);
 *rp = 0;






 online = strcmp(cp, "ON LINE") == 0;
 if (online)
  timeout = number(value(DIALTIMEOUT));
 signal(SIGALRM, alarmtr);
 if (setjmp(Sjbuf))
  return (0);
 alarm(timeout);
 while (notin(cp, buf) && rp < buf + sizeof (buf) - 1) {
  if (online && notin("FAILED CALL", buf) == 0)
   return (0);
  if (read(FD, rp, 1) < 0) {
   alarm(0);
   return (0);
  }
  if (*rp &= 0177)
   rp++;
  *rp = '\0';
 }
 alarm(0);
 return (1);
}
