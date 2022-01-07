
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static uint16_t
urtw_rate2dbps(uint16_t rate)
{

 switch(rate) {
 case 12:
 case 18:
 case 24:
 case 36:
 case 48:
 case 72:
 case 96:
 case 108:
  return (rate * 2);
 default:
  break;
 }
 return (24);
}
