
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int dummy; } ;


 int EINVAL ;





__attribute__((used)) static int
ar933x_bus_ioctl(struct uart_softc *sc, int request, intptr_t data)
{
 int error = 0;


 switch (request) {
 case 130:
 case 129:
 case 128:
  break;
 case 131:
  *(int*)data = 115200;
  break;
 default:
  error = EINVAL;
  break;
 }



 return (error);
}
