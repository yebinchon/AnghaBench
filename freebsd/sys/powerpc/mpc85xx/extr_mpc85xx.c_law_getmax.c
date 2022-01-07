
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SPR_SVR ;
 int SVR_VER (int ) ;
 int mfspr (int ) ;

int
law_getmax(void)
{
 uint32_t ver;
 int law_max;

 ver = SVR_VER(mfspr(SPR_SVR));
 switch (ver) {
 case 135:
 case 134:
  law_max = 8;
  break;
 case 139:
 case 138:
 case 137:
 case 136:
  law_max = 10;
  break;
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  law_max = 32;
  break;
 default:
  law_max = 8;
 }

 return (law_max);
}
