
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct otus_softc {int dummy; } ;



__attribute__((used)) static int
otus_hw_rate_is_ofdm(struct otus_softc *sc, uint8_t hw_rate)
{

 switch (hw_rate) {
 case 0x0:
 case 0x1:
 case 0x2:
 case 0x3:
  return (0);
 default:
  return (1);
 }
}
