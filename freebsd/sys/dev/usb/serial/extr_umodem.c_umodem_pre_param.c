
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {int dummy; } ;
struct termios {int dummy; } ;



__attribute__((used)) static int
umodem_pre_param(struct ucom_softc *ucom, struct termios *t)
{
 return (0);
}
