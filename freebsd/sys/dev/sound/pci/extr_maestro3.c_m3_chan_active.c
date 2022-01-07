
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sc_info {int pch_cnt; int rch_cnt; TYPE_2__* rch; TYPE_1__* pch; } ;
struct TYPE_4__ {scalar_t__ active; } ;
struct TYPE_3__ {scalar_t__ active; } ;



__attribute__((used)) static int
m3_chan_active(struct sc_info *sc)
{
 int i, ret;

 ret = 0;

 for (i = 0; i < sc->pch_cnt; i++)
  ret += sc->pch[i].active;

 for (i = 0; i < sc->rch_cnt; i++)
  ret += sc->rch[i].active;

 return (ret);
}
