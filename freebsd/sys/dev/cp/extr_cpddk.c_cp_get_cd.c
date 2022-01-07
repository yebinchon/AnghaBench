
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int f; int v; scalar_t__ x; TYPE_3__* d; } ;
typedef TYPE_2__ e ;
struct TYPE_7__ {int f; TYPE_1__* k; } ;
struct TYPE_5__ {scalar_t__ x; } ;


 int u (TYPE_3__*,int) ;

int cp_get_cd(e*a){{if(!(a->f==0))goto l315;return 0;l315:;}{if(!(
a->d->f==2))goto l311;return(u(a->d,9)&2)==0;l311:;}{if(!(a->f==6))goto
l308;{ * (volatile unsigned long* )((a->d->k+a->v)->x+4);return( * (
volatile unsigned long* )((a->d->k+a->v)->x+4)&2097152)==0;}goto l303
;l308:;{ * (volatile unsigned long* )((a)->x+4);return( * (volatile
unsigned long* )((a)->x+4)&2097152)==0;}l303:;}}
