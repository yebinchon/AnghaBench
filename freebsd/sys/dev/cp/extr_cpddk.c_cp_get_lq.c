
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f; int l44; int d; } ;
typedef TYPE_1__ e ;


 int u (int ,int ) ;

int cp_get_lq(e*a){unsigned char l76
,l63,l59;static int l114[]={0,95,195,285};int c;{if(!(a->f!=2))goto
l870;return 0;l870:;}l76=u(a->d,a->l44)&12;l63=u(a->d,a->l44)&12;{c=1
;l871:if(!(c<20))goto l440;goto l883;l877:++c;goto l871;l883:l63=u(a
->d,a->l44)&12;goto l877;l440:;}l59=u(a->d,a->l44)&12;{c=1;l899:if(!(
c<20))goto l896;goto l897;l895:++c;goto l899;l897:l59=u(a->d,a->l44)&
12;goto l895;l896:;}{if(!(l76<=l63&&l63<=l59))goto l898;return l114[
l63>>2];l898:;}{if(!(l63<=l59&&l59<=l76))goto l904;return l114[l59>>2
];l904:;}{if(!(l59<=l76&&l76<=l63))goto l900;return l114[l76>>2];l900
:;}{if(!(l76<=l59&&l59<=l63))goto l909;return l114[l59>>2];l909:;}{if
(!(l59<=l63&&l63<=l76))goto l454;return l114[l63>>2];l454:;}return
l114[l76>>2];}
