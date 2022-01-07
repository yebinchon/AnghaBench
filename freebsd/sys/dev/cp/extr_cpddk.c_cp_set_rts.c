
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l218; int l43; scalar_t__ x; } ;
typedef TYPE_1__ e ;



void cp_set_rts(e*a,int m){a->l218=(m!=0);{if(!(a->
l218))goto l327;a->l43|=1048576;goto l324;l327:;a->l43&=~1048576;l324
:;} * (volatile unsigned long* )((a)->x+12)=a->l43;}
