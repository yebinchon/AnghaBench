
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_kring {int rtail; int rcur; int rhead; int nr_hwtail; int nr_hwcur; int name; TYPE_1__* ring; } ;
struct TYPE_2__ {int tail; } ;


 int nm_prdis (int,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
nm_sync_finalize(struct netmap_kring *kring)
{





 kring->ring->tail = kring->rtail = kring->nr_hwtail;

 nm_prdis(5, "%s now hwcur %d hwtail %d head %d cur %d tail %d",
  kring->name, kring->nr_hwcur, kring->nr_hwtail,
  kring->rhead, kring->rcur, kring->rtail);
}
