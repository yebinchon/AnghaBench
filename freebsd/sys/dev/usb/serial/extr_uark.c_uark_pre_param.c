
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {int dummy; } ;
struct termios {int c_ospeed; } ;


 int EINVAL ;

__attribute__((used)) static int
uark_pre_param(struct ucom_softc *ucom, struct termios *t)
{
 if ((t->c_ospeed < 300) || (t->c_ospeed > 115200))
  return (EINVAL);
 return (0);
}
