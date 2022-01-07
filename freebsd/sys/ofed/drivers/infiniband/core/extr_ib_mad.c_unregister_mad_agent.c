
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mad_port_private {int wq; int reg_lock; } ;
struct ib_mad_agent_private {struct ib_mad_agent_private* reg_req; int comp; int agent_list; int timed_work; TYPE_1__* qp_info; } ;
struct TYPE_2__ {struct ib_mad_port_private* port_priv; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_mads (struct ib_mad_agent_private*) ;
 int deref_mad_agent (struct ib_mad_agent_private*) ;
 int flush_workqueue (int ) ;
 int ib_cancel_rmpp_recvs (struct ib_mad_agent_private*) ;
 int kfree (struct ib_mad_agent_private*) ;
 int list_del (int *) ;
 int remove_mad_reg_req (struct ib_mad_agent_private*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void unregister_mad_agent(struct ib_mad_agent_private *mad_agent_priv)
{
 struct ib_mad_port_private *port_priv;
 unsigned long flags;







 cancel_mads(mad_agent_priv);
 port_priv = mad_agent_priv->qp_info->port_priv;
 cancel_delayed_work_sync(&mad_agent_priv->timed_work);

 spin_lock_irqsave(&port_priv->reg_lock, flags);
 remove_mad_reg_req(mad_agent_priv);
 list_del(&mad_agent_priv->agent_list);
 spin_unlock_irqrestore(&port_priv->reg_lock, flags);

 flush_workqueue(port_priv->wq);
 ib_cancel_rmpp_recvs(mad_agent_priv);

 deref_mad_agent(mad_agent_priv);
 wait_for_completion(&mad_agent_priv->comp);

 kfree(mad_agent_priv->reg_req);
 kfree(mad_agent_priv);
}
