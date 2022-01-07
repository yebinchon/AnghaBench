
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int flow_id; } ;
struct TYPE_4__ {int bytes; } ;
struct dn_sch_inst {TYPE_2__ ni; } ;
struct TYPE_3__ {int length; int sch_bytes; scalar_t__ bytes; } ;
struct dn_queue {TYPE_1__ ni; } ;
struct cfg_s {struct dn_sch_inst* si; } ;


 struct dn_queue* FI2Q (struct cfg_s*,int ) ;

__attribute__((used)) static void
gnet_stats_enq(struct cfg_s *c, struct mbuf *mb)
{
 struct dn_sch_inst *si = c->si;
 struct dn_queue *_q = FI2Q(c, mb->flow_id);

 if (_q->ni.length == 1) {
  _q->ni.bytes = 0;
  _q->ni.sch_bytes = si->ni.bytes;
 }
}
