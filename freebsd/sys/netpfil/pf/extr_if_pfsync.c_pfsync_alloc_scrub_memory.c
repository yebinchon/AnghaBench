
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ scrub_flag; } ;
struct pfsync_state_peer {TYPE_1__ scrub; } ;
struct pf_state_peer {int * scrub; } ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int V_pf_state_scrub_z ;
 int * uma_zalloc (int ,int) ;

__attribute__((used)) static int
pfsync_alloc_scrub_memory(struct pfsync_state_peer *s,
    struct pf_state_peer *d)
{
 if (s->scrub.scrub_flag && d->scrub == ((void*)0)) {
  d->scrub = uma_zalloc(V_pf_state_scrub_z, M_NOWAIT | M_ZERO);
  if (d->scrub == ((void*)0))
   return (ENOMEM);
 }

 return (0);
}
