
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t l104; size_t l51; size_t l45; int (* l65 ) (TYPE_2__*,int) ;int l261; scalar_t__ x; TYPE_1__* l42; int * l97; int l614; } ;
typedef TYPE_2__ e ;
struct TYPE_6__ {int t; } ;


 int l715 (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static void l268(e*a){unsigned long
l91;int l219=0;++a->l614;{l185:if(!((l91= * (volatile unsigned long* )&
a->l97[a->l104])!=0))goto l332;{ * (volatile unsigned long* )&a->l97[
a->l104]=0;a->l104=++a->l104%128;{if(!(!(l91&1073741824)))goto l331;{
;goto l185;}l331:;}{if(!(l91&33554432))goto l329;{;{if(!(l91&65536))goto
l326;++l219;l326:;}goto l185;}l329:;};{if(!(a->l51!=a->l45&&( * (
volatile unsigned long* )&a->l42[a->l51].t&1073741824)))goto l322;
l715(a);l322:;}}goto l185;l332:;}{if(!(l219))goto l316;{ * (volatile
unsigned long* )((a)->x+0)=16777216;++a->l261;{if(!(a->l65))goto l314
;a->l65(a,3);l314:;}}l316:;}}
