
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* k; } ;
typedef TYPE_2__ s ;
struct TYPE_5__ {int* j; scalar_t__* l40; } ;
struct TYPE_7__ {scalar_t__ p; TYPE_1__ o; TYPE_2__* d; } ;
typedef TYPE_3__ e ;



__attribute__((used)) static int l610(e*a,int
l87){s*b=a->d;e*h;int j;{h=b->k;l882:if(!(h<b->k+4))goto l872;goto
l850;l874:++h;goto l882;l850:{j=1;l766:if(!(j<32))goto l755;goto l736
;l764:++j;goto l766;l736:{if(!(h->o.j[j]==l87&&h->o.l40[j]==a->p))goto
l735;{h->o.j[j]=0;return 1;}l735:;}goto l764;l755:;}goto l874;l872:;}
return 0;}
