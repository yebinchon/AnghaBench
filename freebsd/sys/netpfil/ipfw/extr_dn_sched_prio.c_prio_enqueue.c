
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct prio_si {struct dn_queue** q_array; int bitmap; } ;
struct mbuf {int dummy; } ;
struct dn_sch_inst {int dummy; } ;
struct dn_queue {TYPE_2__* fs; } ;
struct TYPE_3__ {int* par; } ;
struct TYPE_4__ {TYPE_1__ fs; } ;


 int __set_bit (int,int *) ;
 scalar_t__ dn_enqueue (struct dn_queue*,struct mbuf*,int ) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static int
prio_enqueue(struct dn_sch_inst *_si, struct dn_queue *q, struct mbuf *m)
{
 struct prio_si *si = (struct prio_si *)(_si + 1);
 int prio = q->fs->fs.par[0];

 if (test_bit(prio, &si->bitmap) == 0) {

  __set_bit(prio, &si->bitmap);
  si->q_array[prio] = q;
 } else {
  q = si->q_array[prio];
 }
 if (dn_enqueue(q, m, 0))
  return 1;
 return 0;
}
