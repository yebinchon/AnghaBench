
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_sa_query {struct ib_mad_send_buf* mad_buf; TYPE_1__* port; } ;
struct ib_mad_send_buf {int dummy; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_2__ {struct ib_mad_agent* agent; } ;


 struct ib_sa_query* idr_find (int *,int) ;
 int idr_lock ;
 int query_idr ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ib_sa_cancel_query(int id, struct ib_sa_query *query)
{
 unsigned long flags;
 struct ib_mad_agent *agent;
 struct ib_mad_send_buf *mad_buf;

 spin_lock_irqsave(&idr_lock, flags);
 if (idr_find(&query_idr, id) != query) {
  spin_unlock_irqrestore(&idr_lock, flags);
  return;
 }
 agent = query->port->agent;
 mad_buf = query->mad_buf;
 spin_unlock_irqrestore(&idr_lock, flags);
}
