
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int l174; TYPE_2__* k; scalar_t__ l30; } ;
typedef TYPE_1__ s ;
struct TYPE_7__ {int f; int l46; int l34; } ;
typedef TYPE_2__ e ;


 int cp_set_use16 (TYPE_2__*,int) ;
 int l225 (TYPE_2__*) ;

void l195(s*b,int m){e*h;{if(!(!b->k->l34))goto l798;return;
l798:;}b->l174=(m&&b->l30)?1:0;{h=b->k;l784:if(!(h<b->k+4))goto l782;
goto l778;l220:++h;goto l784;l778:{{if(!(h->f!=3))goto l551;goto l220
;l551:;}cp_set_use16(h,m?m:h->l46);l225(h);}goto l220;l782:;}}
