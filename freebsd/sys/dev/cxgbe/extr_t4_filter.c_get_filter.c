
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hash; } ;
struct t4_filter {TYPE_1__ fs; } ;
struct adapter {int dummy; } ;


 int get_hashfilter (struct adapter*,struct t4_filter*) ;
 int get_tcamfilter (struct adapter*,struct t4_filter*) ;

int
get_filter(struct adapter *sc, struct t4_filter *t)
{
 if (t->fs.hash)
  return (get_hashfilter(sc, t));
 else
  return (get_tcamfilter(sc, t));
}
