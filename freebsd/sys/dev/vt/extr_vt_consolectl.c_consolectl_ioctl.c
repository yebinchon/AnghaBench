
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int mouse_info_t ;
typedef scalar_t__ caddr_t ;




 int ENOIOCTL ;
 int IOCBASECMD (int) ;
 scalar_t__ IOCGROUP (int) ;
 int printf (char*,char,int ) ;
 int sysmouse_process_event (int *) ;

__attribute__((used)) static int
consolectl_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int flag,
    struct thread *td)
{

 switch (cmd) {
 case 129:
  *(int*)data = 0x200;
  return 0;
 case 128: {
  mouse_info_t *mi = (mouse_info_t*)data;

  sysmouse_process_event(mi);
  return (0);
 }
 default:




  return (ENOIOCTL);
 }
}
