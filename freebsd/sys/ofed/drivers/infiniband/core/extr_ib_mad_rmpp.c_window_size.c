
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_mad_agent_private {TYPE_2__* qp_info; } ;
struct TYPE_3__ {int max_active; } ;
struct TYPE_4__ {TYPE_1__ recv_queue; } ;


 int max (int,int) ;

__attribute__((used)) static inline int window_size(struct ib_mad_agent_private *agent)
{
 return max(agent->qp_info->recv_queue.max_active >> 3, 1);
}
