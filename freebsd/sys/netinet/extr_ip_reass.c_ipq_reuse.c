
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {struct mbuf* m_nextpkt; } ;
struct ipq {struct mbuf* ipq_frags; int ipq_nfrags; } ;
struct TYPE_2__ {int count; int head; } ;


 int IPQ_LOCK_ASSERT (int) ;
 scalar_t__ IPQ_TRYLOCK (int) ;
 int IPQ_UNLOCK (int) ;
 int IPREASS_NHASH ;
 int IPSTAT_ADD (int ,int ) ;
 struct ipq* TAILQ_LAST (int *,int ) ;
 int TAILQ_REMOVE (int *,struct ipq*,int ) ;
 TYPE_1__* V_ipq ;
 int atomic_subtract_int (int *,int ) ;
 int ipq_list ;
 int ipqhead ;
 int ips_fragtimeout ;
 int m_freem (struct mbuf*) ;
 int nfrags ;

__attribute__((used)) static struct ipq *
ipq_reuse(int start)
{
 struct ipq *fp;
 int bucket, i;

 IPQ_LOCK_ASSERT(start);

 for (i = 0; i < IPREASS_NHASH; i++) {
  bucket = (start + i) % IPREASS_NHASH;
  if (bucket != start && IPQ_TRYLOCK(bucket) == 0)
   continue;
  fp = TAILQ_LAST(&V_ipq[bucket].head, ipqhead);
  if (fp) {
   struct mbuf *m;

   IPSTAT_ADD(ips_fragtimeout, fp->ipq_nfrags);
   atomic_subtract_int(&nfrags, fp->ipq_nfrags);
   while (fp->ipq_frags) {
    m = fp->ipq_frags;
    fp->ipq_frags = m->m_nextpkt;
    m_freem(m);
   }
   TAILQ_REMOVE(&V_ipq[bucket].head, fp, ipq_list);
   V_ipq[bucket].count--;
   if (bucket != start)
    IPQ_UNLOCK(bucket);
   break;
  }
  if (bucket != start)
   IPQ_UNLOCK(bucket);
 }
 IPQ_LOCK_ASSERT(start);
 return (fp);
}
