
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uftdi_param_config {int dummy; } ;
struct ucom_softc {int dummy; } ;
struct termios {int dummy; } ;


 int DPRINTF (char*) ;
 int uftdi_set_parm_soft (struct ucom_softc*,struct termios*,struct uftdi_param_config*) ;

__attribute__((used)) static int
uftdi_pre_param(struct ucom_softc *ucom, struct termios *t)
{
 struct uftdi_param_config cfg;

 DPRINTF("\n");

 return (uftdi_set_parm_soft(ucom, t, &cfg));
}
