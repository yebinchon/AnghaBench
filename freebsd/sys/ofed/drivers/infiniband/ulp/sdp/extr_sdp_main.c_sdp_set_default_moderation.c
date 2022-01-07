
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cq; } ;
struct sdp_sock {TYPE_1__ rx_ring; } ;


 int ib_modify_cq (int ,scalar_t__,scalar_t__) ;
 scalar_t__ sdp_mod_count ;
 scalar_t__ sdp_mod_usec ;

void
sdp_set_default_moderation(struct sdp_sock *ssk)
{
 if (sdp_mod_count <= 0 || sdp_mod_usec <= 0)
  return;
 ib_modify_cq(ssk->rx_ring.cq, sdp_mod_count, sdp_mod_usec);
}
