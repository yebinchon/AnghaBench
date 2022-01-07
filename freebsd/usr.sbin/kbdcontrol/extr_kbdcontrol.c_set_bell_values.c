
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONS_BELLTYPE ;
 int CONS_QUIET_BELL ;
 int CONS_VISUAL_BELL ;
 int fprintf (int ,char*,int,int) ;
 int ioctl (int ,int ,int*) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;
 int strtol (char*,char**,int ) ;
 int warnx (char*) ;

__attribute__((used)) static void
set_bell_values(char *opt)
{
 int bell, duration, pitch;

 bell = 0;
 duration = 0;
 pitch = 0;
 if (!strncmp(opt, "quiet.", 6)) {
  bell = CONS_QUIET_BELL;
  opt += 6;
 }
 if (!strcmp(opt, "visual"))
  bell |= CONS_VISUAL_BELL;
 else if (!strcmp(opt, "normal"))
  duration = 5, pitch = 800;
 else if (!strcmp(opt, "off"))
  duration = 0, pitch = 0;
 else {
  char *v1;

  bell = 0;
  duration = strtol(opt, &v1, 0);
  if ((duration < 0) || (*v1 != '.'))
   goto badopt;
  opt = ++v1;
  pitch = strtol(opt, &v1, 0);
  if ((pitch < 0) || (*opt == '\0') || (*v1 != '\0')) {
badopt:
   warnx("argument to -b must be duration.pitch or [quiet.]visual|normal|off");
   return;
  }
  if (pitch != 0)
   pitch = 1193182 / pitch;
  duration /= 10;
 }

 ioctl(0, CONS_BELLTYPE, &bell);
 if (duration > 0 && pitch > 0)
  fprintf(stderr, "\e[=%d;%dB", pitch, duration);
}
