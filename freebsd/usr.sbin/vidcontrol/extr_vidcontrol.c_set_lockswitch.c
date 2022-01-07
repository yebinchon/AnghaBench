
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VT_LOCKSWITCH ;
 int err (int,char*,char*) ;
 int errx (int,char*) ;
 int ioctl (int ,int ,int*) ;
 int revert () ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
set_lockswitch(char *arg)
{
 int data;

 if (!strcmp(arg, "off")) {
  data = 0x01;
 } else if (!strcmp(arg, "on")) {
  data = 0x02;
 } else {
  revert();
  errx(1, "argument to -S must be either on or off");
 }

 if (ioctl(0, VT_LOCKSWITCH, &data) == -1) {
  revert();
  err(1, "turning %s vty switching",
       data == 0x01 ? "off" : "on");
 }
}
