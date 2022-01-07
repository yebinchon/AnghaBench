
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int f; int l46; scalar_t__ v; scalar_t__ p; int j; TYPE_1__* d; } ;
typedef TYPE_2__ e ;
struct TYPE_7__ {TYPE_2__* k; } ;


 int cp_set_ts (TYPE_2__*,int ) ;
 int l162 (TYPE_2__*) ;
 int l173 (TYPE_2__*) ;

void cp_set_use16(e*a,int m){e*h;{if(
!(a->f!=3))goto l504;return;l504:;}a->l46=(m!=0);l162(a);l173(a);{h=a
->d->k;l822:if(!(h<a->d->k+4))goto l842;goto l813;l821:++h;goto l822;
l813:{if(!(h->v==a->p))goto l830;cp_set_ts(h,h->j);l830:;}goto l821;
l842:;}}
