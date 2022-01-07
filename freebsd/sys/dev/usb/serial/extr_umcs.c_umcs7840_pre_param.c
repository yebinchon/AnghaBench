
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ucom_softc {int dummy; } ;
struct termios {int c_ospeed; } ;


 int EINVAL ;
 scalar_t__ umcs7840_calc_baudrate (int ,int *,int *) ;

__attribute__((used)) static int
umcs7840_pre_param(struct ucom_softc *ucom, struct termios *t)
{
 uint8_t clk;
 uint16_t divisor;

 if (umcs7840_calc_baudrate(t->c_ospeed, &divisor, &clk) || !divisor)
  return (EINVAL);
 return (0);
}
