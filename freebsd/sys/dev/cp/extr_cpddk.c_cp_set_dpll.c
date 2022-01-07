
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f; int l146; scalar_t__ y; } ;
typedef TYPE_1__ e ;


 int cp_set_baud (TYPE_1__*,scalar_t__) ;

void cp_set_dpll(e*a,int m){{if(!(a->f!=1))goto
l417;return;l417:;}a->l146=m&&(a->y!=0);cp_set_baud(a,a->y);}
