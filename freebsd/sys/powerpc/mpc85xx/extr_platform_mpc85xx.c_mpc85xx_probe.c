
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int platform_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;





 int mfpvr () ;

__attribute__((used)) static int
mpc85xx_probe(platform_t plat)
{
 u_int pvr = (mfpvr() >> 16) & 0xFFFF;

 switch (pvr) {
  case 131:
  case 130:
  case 132:
  case 129:
  case 128:
   return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
