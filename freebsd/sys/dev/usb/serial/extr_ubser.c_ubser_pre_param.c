
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {int dummy; } ;
struct termios {int c_ospeed; int c_cflag; } ;


 int CCAR_OFLOW ;
 int CDSR_OFLOW ;
 int CDTR_IFLOW ;
 int CRTS_IFLOW ;

 int CSIZE ;
 int CSTOPB ;
 int DPRINTF (char*) ;
 int EINVAL ;
 int PARENB ;

__attribute__((used)) static int
ubser_pre_param(struct ucom_softc *ucom, struct termios *t)
{
 DPRINTF("\n");
 switch (t->c_ospeed) {
 case 9600:
  break;
 default:
  return (EINVAL);
 }


 if (t->c_cflag & CSTOPB)
  return (EINVAL);


 if (t->c_cflag & PARENB)
  return (EINVAL);


 switch (t->c_cflag & CSIZE) {
 case 128:
  break;
 default:
  return (EINVAL);
 }


 if ((t->c_cflag &
     (CRTS_IFLOW | CDTR_IFLOW | CDSR_OFLOW | CCAR_OFLOW)) != 0)
  return (EINVAL);







 return (0);
}
