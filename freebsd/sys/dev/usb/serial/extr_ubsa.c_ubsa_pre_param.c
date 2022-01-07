
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {int sc_parent; } ;
struct termios {int c_ospeed; } ;
 int DPRINTF (char*,int ) ;
 int EINVAL ;

__attribute__((used)) static int
ubsa_pre_param(struct ucom_softc *ucom, struct termios *t)
{

 DPRINTF("sc = %p\n", ucom->sc_parent);

 switch (t->c_ospeed) {
 case 139:
 case 133:
 case 129:
 case 137:
 case 134:
 case 131:
 case 128:
 case 136:
 case 132:
 case 130:
 case 138:
 case 135:
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
