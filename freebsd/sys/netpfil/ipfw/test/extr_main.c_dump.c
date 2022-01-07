
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cfg_s {int flows; int loops; } ;
struct TYPE_3__ {scalar_t__ tot_bytes; } ;
struct TYPE_4__ {TYPE_1__ ni; } ;


 int DX (int,char*,int ) ;
 int ND (int,char*,int,unsigned long long) ;
 TYPE_2__* q ;

int
dump(struct cfg_s *c)
{
 int i;

 for (i=0; i < c->flows; i++) {

  ND(1, "queue %4d tot %10llu", i,
      (unsigned long long)q->ni.tot_bytes);
 }
 DX(1, "done %d loops\n", c->loops);
 return 0;
}
