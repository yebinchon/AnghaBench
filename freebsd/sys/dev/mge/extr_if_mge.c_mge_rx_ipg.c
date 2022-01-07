
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
mge_rx_ipg(uint32_t val, int ver)
{

 switch (ver) {
 case 1:
  return ((val & 0x3fff) << 8);
 case 2:
 default:
  return (((val & 0x8000) << 10) | ((val & 0x7fff) << 7));
 }
}
