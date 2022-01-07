
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_16__ {int f; int l31; int l26; scalar_t__ p; scalar_t__ v; int l61; int y; TYPE_10__* d; int l64; int l34; } ;
typedef TYPE_1__ e ;
struct TYPE_15__ {TYPE_1__* k; } ;


 int cp_set_baud (TYPE_1__*,int ) ;
 int cp_set_dir (TYPE_1__*,scalar_t__) ;
 int cp_set_gsyn (TYPE_1__*,int ) ;
 int l (TYPE_10__*,int ,int) ;
 int l138 (TYPE_1__*) ;
 int l157 (TYPE_1__*) ;
 int l162 (TYPE_1__*) ;
 int l173 (TYPE_1__*) ;
 int l202 (TYPE_1__*) ;
 int l206 (TYPE_1__*) ;
 int l225 (TYPE_1__*) ;
 int l227 (TYPE_1__*) ;

void cp_set_unfram(e*a,int m){e*h;
{if(!(a->f!=3))goto l738;return;l738:;}{if(!(!a->l34))goto l739;a->
l31=0;goto l740;l739:;a->l31=m!=0;l740:;}{if(!(a->l31))goto l743;a->
l26|=32;goto l742;l743:;a->l26&=~32;l742:;}l(a->d,a->l64,a->l26);{if(
!(a->l31))goto l745;{cp_set_dir(a,a->p);{h=a->d->k;l758:if(!(h<a->d->
k+4))goto l760;goto l761;l759:++h;goto l758;l761:{if(!((h->f==3||h->f
==6)&&h->v==a->p&&h!=a))goto l762;cp_set_dir(h,h->p);l762:;}goto l759
;l760:;}}goto l763;l745:;{{h=a->d->k;l381:if(!(h<a->d->k+4))goto l382
;goto l767;l768:++h;goto l381;l767:l157(h);goto l768;l382:;}}l763:;}
l173(a);l206(a);l162(a);l227(a);l225(a);l202(a);l138(a);cp_set_baud(a
,a->y);{if(!(a->l31))goto l779;cp_set_gsyn(a,a->l61);l779:;}}
