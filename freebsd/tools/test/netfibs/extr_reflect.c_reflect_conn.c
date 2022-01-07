
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;


 scalar_t__ EHOSTUNREACH ;
 int EX_DATAERR ;
 int EX_NOINPUT ;
 int EX_OSERR ;
 int EX_PROTOCOL ;
 scalar_t__ accepts ;
 scalar_t__ debug ;
 int err (int ,char*,...) ;
 scalar_t__ errno ;
 int errx (int ,char*,...) ;
 int fprintf (int ,char*,char*,char*) ;
 scalar_t__ nostart ;
 scalar_t__ reflectfib ;
 int sendto (int,char*,int,int ,struct sockaddr*,int ) ;
 int snprintf (char*,size_t,char*,scalar_t__) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* testcase ;
 int warn (char*,char*,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static int
reflect_conn(int s, char *buf, size_t buflen, ssize_t l, struct sockaddr *sa,
    socklen_t salen)
{
 ssize_t m;

 if (l == -1)
  err(EX_OSERR, "read()");
 if (l == 0)
  errx(EX_NOINPUT, "EOF");
 if ((size_t)l > (buflen - 1))
  errx(EX_DATAERR, "Input too long");

 buf[l-1] = '\0';
 if (accepts == 0 && nostart == 0) {
  if (strncmp(buf, "START ", 6) != 0)
   errx(EX_PROTOCOL, "Not received START on first "
       "connect: %s", buf);
  if (l < 8)
   errx(EX_PROTOCOL, "START without test case name: %s",
       buf);
  if (strcmp(buf+6, testcase) != 0)
   errx(EX_PROTOCOL, "START test case does not match "
       "'%s': '%s'", testcase, buf+6);
 }

 if (debug > 0)
  fprintf(stderr, "<< %s: %s\n", testcase, buf);

 if (reflectfib != (u_int)-1)
  l = snprintf(buf, buflen, "FIB %u\n", reflectfib);


 if (debug > 0) {
  buf[l-1] = '\0';
  fprintf(stderr, ">> %s: %s\n", testcase, buf);
 }


 buf[l-1] = '\n';

 if (sa != ((void*)0)) {
  m = sendto(s, buf, l, 0, sa, salen);
 } else
  m = write(s, buf, l);

 if (m == -1 && sa != ((void*)0) && errno == EHOSTUNREACH)
  warn("ignored expected: sendto(%s, %zd)", buf, l);
 else if (m == -1 && (sa == ((void*)0) || errno != EHOSTUNREACH))
  err(EX_OSERR, "write(%s, %zd)", buf, l);
 else if (m != l)
  err(EX_OSERR, "short write(%s, %zd) %zd", buf, l, m);


 accepts++;


 if (strncmp(buf, "DONE", 4) == 0)
  return (-2);
 return (0);
}
