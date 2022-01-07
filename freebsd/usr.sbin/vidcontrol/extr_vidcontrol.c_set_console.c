
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VT_ACTIVATE ;
 int atoi (char*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int ioctl (int ,int ,int) ;
 int revert () ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strspn (char*,char*) ;

__attribute__((used)) static void
set_console(char *arg)
{
 int n;

 if(!arg || strspn(arg,"0123456789") != strlen(arg)) {
  revert();
  errx(1, "bad console number");
 }

 n = atoi(arg);

 if (n < 1 || n > 16) {
  revert();
  errx(1, "console number out of range");
 } else if (ioctl(0, VT_ACTIVATE, n) == -1) {
  revert();
  err(1, "switching vty");
 }
}
