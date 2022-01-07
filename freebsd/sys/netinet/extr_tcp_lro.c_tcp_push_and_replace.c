
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct lro_entry {TYPE_1__* m_head; } ;
struct lro_ctrl {int dummy; } ;
struct TYPE_2__ {struct mbuf* m_nextpkt; } ;


 int tcp_flush_out_le (struct tcpcb*,struct lro_ctrl*,struct lro_entry*,int) ;
 int tcp_set_le_to_m (struct lro_ctrl*,struct lro_entry*,struct mbuf*) ;

__attribute__((used)) static void
tcp_push_and_replace(struct tcpcb *tp, struct lro_ctrl *lc, struct lro_entry *le, struct mbuf *m, int locked)
{




 struct mbuf *msave;


 msave = le->m_head->m_nextpkt;
 le->m_head->m_nextpkt = ((void*)0);

 tcp_flush_out_le(tp, lc, le, locked);





 tcp_set_le_to_m(lc, le, m);

 m->m_nextpkt = msave;
}
