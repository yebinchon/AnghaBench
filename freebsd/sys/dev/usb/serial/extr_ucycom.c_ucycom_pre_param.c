
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {int dummy; } ;
struct termios {int c_ospeed; } ;


 int EINVAL ;

__attribute__((used)) static int
ucycom_pre_param(struct ucom_softc *ucom, struct termios *t)
{
 switch (t->c_ospeed) {
  case 600:
  case 1200:
  case 2400:
  case 4800:
  case 9600:
  case 19200:
  case 38400:
  case 57600:
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
