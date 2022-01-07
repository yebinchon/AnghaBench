
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct netmap_kring {scalar_t__ nkr_num_slots; int nr_hwtail; } ;


 scalar_t__ NM_ACCESS_ONCE (int ) ;
 scalar_t__ nm_prev (int ,scalar_t__) ;

__attribute__((used)) static inline int
sync_kloop_norxslots(struct netmap_kring *kring, uint32_t g_head)
{
 return (NM_ACCESS_ONCE(kring->nr_hwtail) == nm_prev(g_head,
    kring->nkr_num_slots - 1));
}
