
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
struct ipqbucket {int count; int head; } ;
struct ipq {struct mbuf* ipq_frags; int ipq_nfrags; } ;


 int TAILQ_REMOVE (int *,struct ipq*,int ) ;
 int V_ipq_zone ;
 int atomic_subtract_int (int *,int ) ;
 int ipq_list ;
 int m_freem (struct mbuf*) ;
 int nfrags ;
 int uma_zfree (int ,struct ipq*) ;

__attribute__((used)) static void
ipq_free(struct ipqbucket *bucket, struct ipq *fp)
{
 struct mbuf *q;

 atomic_subtract_int(&nfrags, fp->ipq_nfrags);
 while (fp->ipq_frags) {
  q = fp->ipq_frags;
  fp->ipq_frags = q->m_nextpkt;
  m_freem(q);
 }
 TAILQ_REMOVE(&bucket->head, fp, ipq_list);
 bucket->count--;
 uma_zfree(V_ipq_zone, fp);
}
