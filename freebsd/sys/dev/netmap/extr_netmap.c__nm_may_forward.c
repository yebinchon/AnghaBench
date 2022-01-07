
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netmap_kring {scalar_t__ tx; TYPE_2__* na; TYPE_1__* ring; } ;
struct TYPE_4__ {int na_flags; } ;
struct TYPE_3__ {int flags; } ;


 int NAF_HOST_RINGS ;
 int NR_FORWARD ;
 scalar_t__ NR_RX ;
 scalar_t__ netmap_fwd ;

__attribute__((used)) static inline int
_nm_may_forward(struct netmap_kring *kring)
{
 return ((netmap_fwd || kring->ring->flags & NR_FORWARD) &&
   kring->na->na_flags & NAF_HOST_RINGS &&
   kring->tx == NR_RX);
}
