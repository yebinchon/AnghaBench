
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct octeon_device {int num_iqs; struct lio_instr_queue** instr_queue; } ;
struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct lio_instr_queue {int enq_lock; int br; } ;
struct lio {struct octeon_device* oct_dev; } ;
struct ifnet {int dummy; } ;


 scalar_t__ M_HASHTYPE_GET (struct mbuf*) ;
 scalar_t__ M_HASHTYPE_NONE ;
 int curcpu ;
 int drbr_enqueue (struct ifnet*,int ,struct mbuf*) ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int lio_dev_dbg (struct octeon_device*,char*,int,int) ;
 int lio_mq_start_locked (struct ifnet*,struct lio_instr_queue*) ;
 scalar_t__ mtx_trylock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ rss_hash2bucket (int,scalar_t__,int*) ;

int
lio_mq_start(struct ifnet *ifp, struct mbuf *m)
{
 struct lio *lio = if_getsoftc(ifp);
 struct octeon_device *oct = lio->oct_dev;
 struct lio_instr_queue *iq;
 int err = 0, i;




 if (M_HASHTYPE_GET(m) != M_HASHTYPE_NONE) {
   i = m->m_pkthdr.flowid % oct->num_iqs;
 } else
  i = curcpu % oct->num_iqs;

 iq = oct->instr_queue[i];

 err = drbr_enqueue(ifp, iq->br, m);
 if (err)
  return (err);

 if (mtx_trylock(&iq->enq_lock)) {
  lio_mq_start_locked(ifp, iq);
  mtx_unlock(&iq->enq_lock);
 }

 return (err);
}
