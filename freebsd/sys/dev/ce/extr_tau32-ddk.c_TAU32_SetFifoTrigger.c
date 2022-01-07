
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SP4ZU; int h2LrH3; int ** hRUi43; } ;
typedef TYPE_1__ kWMzp1 ;
typedef int MhiF14 ;


 int CDXHr1 (int ,unsigned int,int ) ;
 int h2LrH3 (int *) ;
 int uYS5N2 (int *) ;

int __attribute__((cdecl))TAU32_SetFifoTrigger(
kWMzp1*J7Iki4,int b9Zs_,unsigned UYtd71,unsigned iBs7A2,MhiF14 IkJYR1
){{if(!(b9Zs_!=(-1)&&b9Zs_>0x1))goto SXW_i;return 0;SXW_i:;}{if(!(
J7Iki4->SP4ZU==2&&b9Zs_>0))goto nor1g1;return 0;nor1g1:;}{if(!(UYtd71
>03u||iBs7A2>=256))goto RsG2u4;return 0;RsG2u4:;}h2LrH3(&J7Iki4->
h2LrH3);{if(!(b9Zs_==(-1)||b9Zs_==0))goto c6OfL3;CDXHr1(J7Iki4->
hRUi43[0][UYtd71],iBs7A2,IkJYR1);c6OfL3:;}{if(!(J7Iki4->SP4ZU!=2))goto
rdouy4;{if(!(b9Zs_==(-1)||b9Zs_==1))goto ODnGX4;CDXHr1(J7Iki4->hRUi43
[1][UYtd71],iBs7A2,IkJYR1);ODnGX4:;}rdouy4:;}uYS5N2(&J7Iki4->h2LrH3);
return 01;}
