
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int GEt0d; int SP4ZU; int h2LrH3; TYPE_1__* fV7o35; } ;
typedef TYPE_2__ kWMzp1 ;
struct TYPE_4__ {unsigned long UyRVB4; } ;


 int AUUSL3 (unsigned long volatile*,int ,unsigned int) ;
 int h2LrH3 (int *) ;
 int uYS5N2 (int *) ;

int
__attribute__((cdecl))TAU32_SetSyncMode(kWMzp1*J7Iki4,unsigned JzUUv2
){unsigned t57WF3;h2LrH3(&J7Iki4->h2LrH3);t57WF3=J7Iki4->GEt0d&~0x23;
switch(JzUUv2){case 03:t57WF3|=32;break;case 0x1:t57WF3|=02;break;
case 0:t57WF3|=1;break;case 2:{if(!(J7Iki4->SP4ZU!=02))goto ur7M31;{
t57WF3|=0x3;break;}ur7M31:;}default:uYS5N2(&J7Iki4->h2LrH3);return 0;
}{if(!(J7Iki4->GEt0d!=t57WF3))goto jIkkW3;{volatile unsigned long*
RdZoN;RdZoN=&J7Iki4->fV7o35->UyRVB4;AUUSL3(RdZoN,0,J7Iki4->GEt0d=
t57WF3);}jIkkW3:;}uYS5N2(&J7Iki4->h2LrH3);return 0x1;}
