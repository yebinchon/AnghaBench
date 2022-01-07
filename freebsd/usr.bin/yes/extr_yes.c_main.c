
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int y ;
typedef scalar_t__ ssize_t ;
typedef int buf ;


 int STDOUT_FILENO ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_limit_stdio () ;
 int err (int,char*) ;
 int memcpy (char*,char*,size_t) ;
 int strlen (char*) ;
 scalar_t__ write (int ,char*,size_t) ;

int
main(int argc, char **argv)
{
 char buf[8192];
 char y[2] = { 'y', '\n' };
 char * exp = y;
 size_t buflen = 0;
 size_t explen = sizeof(y);
 size_t more;
 ssize_t ret;

 if (caph_limit_stdio() < 0 || caph_enter() < 0)
  err(1, "capsicum");

 if (argc > 1) {
  exp = argv[1];
  explen = strlen(exp) + 1;
  exp[explen - 1] = '\n';
 }

 if (explen <= sizeof(buf)) {
  while (buflen < sizeof(buf) - explen) {
   memcpy(buf + buflen, exp, explen);
   buflen += explen;
  }
  exp = buf;
  explen = buflen;
 }

 more = explen;
 while ((ret = write(STDOUT_FILENO, exp + (explen - more), more)) > 0)
  if ((more -= ret) == 0)
   more = explen;

 err(1, "stdout");

}
