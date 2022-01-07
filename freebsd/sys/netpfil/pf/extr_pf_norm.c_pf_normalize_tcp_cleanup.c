
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ scrub; } ;
struct TYPE_3__ {scalar_t__ scrub; } ;
struct pf_state {TYPE_2__ dst; TYPE_1__ src; } ;


 int V_pf_state_scrub_z ;
 int uma_zfree (int ,scalar_t__) ;

void
pf_normalize_tcp_cleanup(struct pf_state *state)
{
 if (state->src.scrub)
  uma_zfree(V_pf_state_scrub_z, state->src.scrub);
 if (state->dst.scrub)
  uma_zfree(V_pf_state_scrub_z, state->dst.scrub);


}
