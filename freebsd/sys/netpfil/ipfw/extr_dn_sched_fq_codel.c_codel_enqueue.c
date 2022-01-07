
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct m_tag {int dummy; } ;
struct fq_codel_si {int dummy; } ;
struct TYPE_3__ {scalar_t__ maxpkt_size; } ;
struct fq_codel_flow {int mq; TYPE_1__ cst; } ;
typedef int aqm_time_t ;


 int AQM_UNOW ;
 int DN_AQM_MTAG_TS ;
 int MTAG_ABI_COMPAT ;
 int M_NOWAIT ;
 int fq_update_stats (struct fq_codel_flow*,struct fq_codel_si*,scalar_t__,int) ;
 int m_freem (struct mbuf*) ;
 struct m_tag* m_tag_alloc (int ,int ,int,int ) ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;
 int mq_append (int *,struct mbuf*) ;

__attribute__((used)) static int
codel_enqueue(struct fq_codel_flow *q, struct mbuf *m, struct fq_codel_si *si)
{
 uint64_t len;

 len = m->m_pkthdr.len;

 if (len > q->cst.maxpkt_size)
  q->cst.maxpkt_size = len;


 struct m_tag *mtag;
 mtag = m_tag_locate(m, MTAG_ABI_COMPAT, DN_AQM_MTAG_TS, ((void*)0));
 if (mtag == ((void*)0))
  mtag = m_tag_alloc(MTAG_ABI_COMPAT, DN_AQM_MTAG_TS, sizeof(aqm_time_t),
   M_NOWAIT);
 if (mtag == ((void*)0)) {
  m_freem(m);
  goto drop;
 }
 *(aqm_time_t *)(mtag + 1) = AQM_UNOW;
 m_tag_prepend(m, mtag);

 mq_append(&q->mq, m);
 fq_update_stats(q, si, len, 0);
 return 0;

drop:
 fq_update_stats(q, si, len, 1);
 m_freem(m);
 return 1;
}
