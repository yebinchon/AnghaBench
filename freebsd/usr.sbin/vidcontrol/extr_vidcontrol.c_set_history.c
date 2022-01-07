
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONS_HISTORY ;
 int atoi (char*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int ioctl (int ,int ,int*) ;
 int revert () ;

__attribute__((used)) static void
set_history(char *opt)
{
 int size;

 size = atoi(opt);

 if ((*opt == '\0') || size < 0) {
  revert();
  errx(1, "argument must not be less than zero");
 }

 if (ioctl(0, CONS_HISTORY, &size) == -1) {
  revert();
  err(1, "setting history buffer size");
 }
}
