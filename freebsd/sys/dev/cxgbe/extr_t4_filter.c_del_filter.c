
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prio; scalar_t__ hash; } ;
struct t4_filter {TYPE_1__ fs; } ;
struct TYPE_4__ {int * ftid_tab; int * hpftid_tab; int * hftid_hash_4t; } ;
struct adapter {int flags; TYPE_2__ tids; } ;


 int EINVAL ;
 int FULL_INIT_DONE ;
 int del_hashfilter (struct adapter*,struct t4_filter*) ;
 int del_tcamfilter (struct adapter*,struct t4_filter*) ;
 scalar_t__ separate_hpfilter_region (struct adapter*) ;

int
del_filter(struct adapter *sc, struct t4_filter *t)
{


 if (!(sc->flags & FULL_INIT_DONE))
  return (EINVAL);





 if (t->fs.hash) {
  if (sc->tids.hftid_hash_4t != ((void*)0))
   return (del_hashfilter(sc, t));
 } else if (separate_hpfilter_region(sc) && t->fs.prio) {
  if (sc->tids.hpftid_tab != ((void*)0))
   return (del_tcamfilter(sc, t));
 } else {
  if (sc->tids.ftid_tab != ((void*)0))
   return (del_tcamfilter(sc, t));
 }

 return (EINVAL);
}
