
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int prio; int hash; } ;
struct t4_filter {int idx; TYPE_1__ fs; } ;


 int CHELSIO_T4_DEL_FILTER ;
 int doit (int ,struct t4_filter*) ;

__attribute__((used)) static int
del_filter(uint32_t idx, int prio, int hashfilter)
{
 struct t4_filter t;

 t.fs.prio = prio;
 t.fs.hash = hashfilter;
 t.idx = idx;

 return doit(CHELSIO_T4_DEL_FILTER, &t);
}
