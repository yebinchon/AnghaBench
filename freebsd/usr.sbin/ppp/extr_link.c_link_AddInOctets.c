
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; int total; scalar_t__ gather; } ;
struct link {TYPE_1__ stats; } ;


 int throughput_addin (int *,int) ;

__attribute__((used)) static inline void
link_AddInOctets(struct link *l, int n)
{
  if (l->stats.gather) {
    throughput_addin(&l->stats.total, n);
    if (l->stats.parent)
      throughput_addin(l->stats.parent, n);
  }
}
