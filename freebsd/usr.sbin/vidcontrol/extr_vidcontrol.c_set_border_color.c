
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDSBORDER ;
 int err (int,char*) ;
 int errx (int,char*,char*) ;
 int get_color_number (char*) ;
 scalar_t__ ioctl (int ,int ,int) ;
 int revert () ;

__attribute__((used)) static void
set_border_color(char *arg)
{
 int color;

 color = get_color_number(arg);
 if (color == -1) {
  revert();
  errx(1, "invalid color '%s'", arg);
 }
 if (ioctl(0, KDSBORDER, color) != 0) {
  revert();
  err(1, "ioctl(KD_SBORDER)");
 }
}
