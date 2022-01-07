
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t l115; TYPE_2__* k; int * l94; int l563; } ;
typedef TYPE_1__ s ;
struct TYPE_8__ {size_t l104; size_t l28; scalar_t__ l102; int * l67; int * l97; int l70; } ;
typedef TYPE_2__ e ;


 int l268 (TYPE_2__*) ;
 int l820 (TYPE_2__*) ;
 int l907 (TYPE_1__*) ;

void
cp_handle_interrupt(s*b){e*a;++b->l563;{if(!( * (volatile unsigned
long* )&b->l94[b->l115]))goto l292;l907(b);l292:;}{a=b->k;l291:if(!(a
<b->k+4))goto l284;goto l281;l286:++a;goto l291;l281:{{if(!(~(a->l70)))goto
l279;{{if(!( * (volatile unsigned long* )&a->l97[a->l104]))goto l277;
l268(a);l277:;}{if(!( * (volatile unsigned long* )&a->l67[a->l28]!= *
(volatile unsigned long* )((a)->l102)))goto l271;l820(a);l271:;}}l279
:;}}goto l286;l284:;}}
