
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int f; int l52; int l36; int l26; int l134; int y; int l64; int d; scalar_t__ x; int v; int p; } ;
typedef TYPE_1__ e ;


 int cp_set_baud (TYPE_1__*,int ) ;
 int cp_set_dir (TYPE_1__*,int ) ;
 int cp_set_scrambler (TYPE_1__*,int ) ;
 int l (int ,int ,int) ;

void
cp_set_phony(e*a,int m){{if(!(a->f==3))goto l679;a->l52=(m!=0);l679:;
}{if(!(a->l52))goto l550;a->v=a->p;l550:;}cp_set_dir(a,a->v);a->l36|=
1310728;{if(!(a->l52))goto l681;{a->l26|=64;a->l36|=4194305;}goto l548
;l681:;{a->l26&=~64;a->l36&=~4194305;}l548:;} * (volatile unsigned
long* )((a)->x+16)=a->l36;{if(!(a->f==3))goto l683;{l(a->d,a->l64,a->
l26);cp_set_baud(a,a->y);cp_set_scrambler(a,a->l134);}l683:;}}
