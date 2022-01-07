
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct dn_sch_inst {int dummy; } ;
struct dn_queue {int dummy; } ;


 struct mbuf* dn_dequeue (struct dn_queue*) ;

__attribute__((used)) static struct mbuf *
fifo_dequeue(struct dn_sch_inst *si)
{
 return dn_dequeue((struct dn_queue *)(si + 1));
}
