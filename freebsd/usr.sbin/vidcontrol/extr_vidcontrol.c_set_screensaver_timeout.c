
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONS_BLANKTIME ;
 int atoi (char*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int ioctl (int ,int ,int*) ;
 int revert () ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
set_screensaver_timeout(char *arg)
{
 int nsec;

 if (!strcmp(arg, "off")) {
  nsec = 0;
 } else {
  nsec = atoi(arg);

  if ((*arg == '\0') || (nsec < 1)) {
   revert();
   errx(1, "argument must be a positive number");
  }
 }

 if (ioctl(0, CONS_BLANKTIME, &nsec) == -1) {
  revert();
  err(1, "setting screensaver period");
 }
}
