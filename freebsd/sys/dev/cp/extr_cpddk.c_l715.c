
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int l128 ;
struct TYPE_8__ {size_t l51; int l45; int* l132; int* l154; int p; int l620; int (* l187 ) (TYPE_3__*,void*,int) ;int l301; TYPE_2__* d; void** l79; TYPE_1__* l42; } ;
typedef TYPE_3__ e ;
struct TYPE_7__ {scalar_t__ g; } ;
struct TYPE_6__ {int w; } ;


 int outb (int,int ) ;
 int stub1 (TYPE_3__*,void*,int) ;

__attribute__((used)) static void l715(e*a){int w=(( * (volatile unsigned long* )&a
->l42[a->l51].w)>>16&8191);void*l79=a->l79[a->l51];;a->l51=++a->l51%4
;{if(!(a->l51!=a->l45))goto l343;{int l655=(( * (a)->l132)-a->l154[0]
)/sizeof(l128);{if(!(l655==(a->l51+4-1)%4))goto l342;{; * (volatile
unsigned long* )((a->d)->g+0)=1024<<a->p;outb(128,0);}l342:;}}l343:;}
{if(!(w>0))goto l339;{a->l620+=w;++a->l301;{if(!(a->l187))goto l337;a
->l187(a,l79,w);l337:;}}l339:;}}
