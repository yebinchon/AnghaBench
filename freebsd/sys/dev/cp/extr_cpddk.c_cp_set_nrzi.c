
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f; int l145; int l35; scalar_t__ x; } ;
typedef TYPE_1__ e ;



void cp_set_nrzi(e*a,int m){{if(!(a->f!=1))goto l804;return;l804:;}a
->l145=m?1:0;{if(!(a->l145))goto l805;a->l35|=2097152;goto l402;l805:
;a->l35&=~2097152;l402:;} * (volatile unsigned long* )((a)->x+8)=a->
l35;}
