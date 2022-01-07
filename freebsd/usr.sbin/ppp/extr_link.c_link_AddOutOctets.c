
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; int total; scalar_t__ gather; } ;
struct link {TYPE_1__ stats; } ;


 int throughput_addout (int *,int) ;

__attribute__((used)) static inline void
link_AddOutOctets(struct link *l, int n)
{
  if (l->stats.gather) {
    throughput_addout(&l->stats.total, n);
    if (l->stats.parent)
      throughput_addout(l->stats.parent, n);
  }
}
