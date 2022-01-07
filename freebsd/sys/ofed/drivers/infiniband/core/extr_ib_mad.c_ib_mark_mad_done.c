
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mad_send_wr_private {int refcount; TYPE_1__* mad_agent_priv; int agent_list; scalar_t__ timeout; } ;
struct TYPE_2__ {int done_list; } ;


 int list_move_tail (int *,int *) ;

void ib_mark_mad_done(struct ib_mad_send_wr_private *mad_send_wr)
{
 mad_send_wr->timeout = 0;
 if (mad_send_wr->refcount == 1)
  list_move_tail(&mad_send_wr->agent_list,
         &mad_send_wr->mad_agent_priv->done_list);
}
