
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int f; int l53; int l134; int l61; } ;
typedef TYPE_1__ e ;


 int cp_set_gsyn (TYPE_1__*,int ) ;
 int cp_set_lloop (TYPE_1__*,int ) ;
 int cp_set_scrambler (TYPE_1__*,int ) ;
 int l106 (TYPE_1__*,int,int) ;

__attribute__((used)) static void l165(e*a){{if(!(a->f!=2))goto l910;
return;l910:;}cp_set_gsyn(a,a->l61);cp_set_scrambler(a,a->l134);l106(
a,16,(32|64));l106(a,16,1|4);l106(a,17,0);l106(a,20,96);cp_set_lloop(
a,a->l53);}
