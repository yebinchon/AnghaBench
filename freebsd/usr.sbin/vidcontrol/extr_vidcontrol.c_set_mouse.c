
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mouse_info {scalar_t__ operation; } ;


 int CONS_MOUSECTL ;
 scalar_t__ MOUSE_HIDE ;
 scalar_t__ MOUSE_SHOW ;
 int err (int,char*,char*) ;
 int errx (int,char*) ;
 int ioctl (int ,int ,struct mouse_info*) ;
 int revert () ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
set_mouse(char *arg)
{
 struct mouse_info mouse;

 if (!strcmp(arg, "on")) {
  mouse.operation = MOUSE_SHOW;
 } else if (!strcmp(arg, "off")) {
  mouse.operation = MOUSE_HIDE;
 } else {
  revert();
  errx(1, "argument to -m must be either on or off");
 }

 if (ioctl(0, CONS_MOUSECTL, &mouse) == -1) {
  revert();
  err(1, "%sing the mouse",
       mouse.operation == MOUSE_SHOW ? "show" : "hid");
 }
}
