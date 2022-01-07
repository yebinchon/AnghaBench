
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct uftdi_softc {int dummy; } ;
struct uftdi_param_config {size_t baud_lobits; scalar_t__ baud_hibits; } ;
typedef int speed_t ;


 int ERANGE ;
 size_t nitems (int const*) ;

__attribute__((used)) static int
uftdi_sio_encode_baudrate(struct uftdi_softc *sc, speed_t speed,
 struct uftdi_param_config *cfg)
{
 u_int i;
 const speed_t sio_speeds[] = {
  300, 600, 1200, 2400, 4800, 9600, 19200, 38400, 57600, 115200
 };





 for (i = 0; i < nitems(sio_speeds); ++i) {
  if (speed == sio_speeds[i]) {
   cfg->baud_lobits = i;
   cfg->baud_hibits = 0;
   return (0);
  }
 }
 return (ERANGE);
}
