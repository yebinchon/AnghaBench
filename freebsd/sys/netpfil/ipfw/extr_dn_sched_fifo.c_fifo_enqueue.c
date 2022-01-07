
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct dn_sch_inst {int dummy; } ;
struct dn_queue {int dummy; } ;


 int dn_enqueue (struct dn_queue*,struct mbuf*,int ) ;

__attribute__((used)) static int
fifo_enqueue(struct dn_sch_inst *si, struct dn_queue *q, struct mbuf *m)
{




 (void)q;
 return dn_enqueue((struct dn_queue *)(si+1), m, 0);
}
