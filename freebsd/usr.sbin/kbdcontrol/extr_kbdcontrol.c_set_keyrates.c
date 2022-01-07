
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDSETRAD ;
 int KDSETREPEAT ;
 int* delays ;
 scalar_t__ ioctl (int ,int ,...) ;
 int ndelays ;
 int nrepeats ;
 int* repeats ;
 int strcmp (char*,char*) ;
 int strtol (char*,char**,int ) ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static void
set_keyrates(char *opt)
{
 int arg[2];
 int repeat;
 int delay;
 int r, d;

 if (!strcmp(opt, "slow")) {
  delay = 1000, repeat = 500;
  d = 3, r = 31;
 } else if (!strcmp(opt, "normal")) {
  delay = 500, repeat = 125;
  d = 1, r = 15;
 } else if (!strcmp(opt, "fast")) {
  delay = repeat = 0;
  d = r = 0;
 } else {
  int n;
  char *v1;

  delay = strtol(opt, &v1, 0);
  if ((delay < 0) || (*v1 != '.'))
   goto badopt;
  opt = ++v1;
  repeat = strtol(opt, &v1, 0);
  if ((repeat < 0) || (*opt == '\0') || (*v1 != '\0')) {
badopt:
   warnx("argument to -r must be delay.repeat or slow|normal|fast");
   return;
  }
  for (n = 0; n < ndelays - 1; n++)
   if (delay <= delays[n])
    break;
  d = n;
  for (n = 0; n < nrepeats - 1; n++)
   if (repeat <= repeats[n])
    break;
  r = n;
 }

 arg[0] = delay;
 arg[1] = repeat;
 if (ioctl(0, KDSETREPEAT, arg)) {
  if (ioctl(0, KDSETRAD, (d << 5) | r))
   warn("setting keyboard rate");
 }
}
