
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct mbuf {int * m_nextpkt; } ;
struct m_tag {scalar_t__ m_tag_id; int m_tag_cookie; } ;
struct TYPE_6__ {int info; } ;
struct ip_fw_args {int flags; int f_id; TYPE_1__ rule; } ;
struct dn_sch_inst {int kflags; scalar_t__ idle_time; scalar_t__ sched_time; scalar_t__ credit; } ;
struct dn_queue {int dummy; } ;
struct dn_link {scalar_t__ bandwidth; scalar_t__ burst; } ;
struct TYPE_8__ {int flags; } ;
struct dn_fsk {TYPE_3__ fs; TYPE_4__* sched; } ;
struct TYPE_10__ {scalar_t__ curr_time; scalar_t__ io_fast; int fshash; int pending; scalar_t__ busy; } ;
struct TYPE_9__ {struct dn_link link; TYPE_2__* fp; } ;
struct TYPE_7__ {int flags; scalar_t__ (* enqueue ) (struct dn_sch_inst*,struct dn_queue*,struct mbuf*) ;} ;


 int DIR_IN ;
 int DIR_OUT ;
 int DN_ACTIVE ;
 int DN_BH_WLOCK () ;
 int DN_BH_WUNLOCK () ;
 int DN_MAX_ID ;
 int DN_MULTIQUEUE ;
 int DN_NOERROR ;
 int ENOBUFS ;
 int FREE_PKT (struct mbuf*) ;
 int IPFW_ARGS_ETHER ;
 int IPFW_ARGS_IN ;
 int IPFW_ARGS_IP6 ;
 int IPFW_INFO_MASK ;
 int IPFW_IS_PIPE ;
 int MTAG_IPFW_RULE ;
 int PROTO_IPV6 ;
 int PROTO_LAYER2 ;
 TYPE_5__ dn_cfg ;
 struct dn_fsk* dn_ht_find (int ,int,int ,int *) ;
 int dummynet_send (struct mbuf*) ;
 int io_pkt ;
 int io_pkt_drop ;
 int io_pkt_fast ;
 struct dn_queue* ipdn_q_find (struct dn_fsk*,struct dn_sch_inst*,int *) ;
 struct dn_sch_inst* ipdn_si_find (TYPE_4__*,int *) ;
 struct m_tag* m_tag_first (struct mbuf*) ;
 int mq_append (int *,struct mbuf*) ;
 int printf (char*) ;
 struct mbuf* serve_sched (int *,struct dn_sch_inst*,scalar_t__) ;
 scalar_t__ stub1 (struct dn_sch_inst*,struct dn_queue*,struct mbuf*) ;
 scalar_t__ tag_mbuf (struct mbuf*,int,struct ip_fw_args*) ;

int
dummynet_io(struct mbuf **m0, struct ip_fw_args *fwa)
{
 struct mbuf *m = *m0;
 struct dn_fsk *fs = ((void*)0);
 struct dn_sch_inst *si;
 struct dn_queue *q = ((void*)0);
 int fs_id, dir;

 fs_id = (fwa->rule.info & IPFW_INFO_MASK) +
  ((fwa->rule.info & IPFW_IS_PIPE) ? 2*DN_MAX_ID : 0);

 if (fwa->flags & IPFW_ARGS_IN)
  dir = DIR_IN;
 else
  dir = DIR_OUT;
 if (fwa->flags & IPFW_ARGS_ETHER)
  dir |= PROTO_LAYER2;
 else if (fwa->flags & IPFW_ARGS_IP6)
  dir |= PROTO_IPV6;
 DN_BH_WLOCK();
 io_pkt++;

 if (tag_mbuf(m, dir, fwa))
  goto dropit;
 if (dn_cfg.busy) {



  mq_append(&dn_cfg.pending, m);
  m = *m0 = ((void*)0);
  goto done;
 }

 fs = dn_ht_find(dn_cfg.fshash, fs_id, 0, ((void*)0));
 if (fs == ((void*)0))
  goto dropit;
 if (fs->sched == ((void*)0))
  goto dropit;

 si = ipdn_si_find(fs->sched, &(fwa->f_id));
 if (si == ((void*)0))
  goto dropit;




 if (fs->sched->fp->flags & DN_MULTIQUEUE) {
  q = ipdn_q_find(fs, si, &(fwa->f_id));
  if (q == ((void*)0))
   goto dropit;
 }
 if (fs->sched->fp->enqueue(si, q, m)) {

  m = *m0 = ((void*)0);


  io_pkt_drop--;

  goto dropit;
 }

 if (si->kflags & DN_ACTIVE) {
  m = *m0 = ((void*)0);
  goto done;
 }


 if (si->idle_time < dn_cfg.curr_time) {

     struct dn_link *p = &fs->sched->link;

     si->sched_time = dn_cfg.curr_time;
     si->credit = dn_cfg.io_fast ? p->bandwidth : 0;
     if (p->burst) {
  uint64_t burst = (dn_cfg.curr_time - si->idle_time) * p->bandwidth;
  if (burst > p->burst)
   burst = p->burst;
  si->credit += burst;
     }
 }

 m = serve_sched(((void*)0), si, dn_cfg.curr_time);






 if ( m == *m0 && (dir & PROTO_LAYER2) == 0 ) {

  struct m_tag *tag = m_tag_first(m);

  tag->m_tag_cookie = MTAG_IPFW_RULE;
  tag->m_tag_id = 0;
  io_pkt_fast++;
  if (m->m_nextpkt != ((void*)0)) {
   printf("dummynet: fast io: pkt chain detected!\n");
   m->m_nextpkt = ((void*)0);
  }
  m = ((void*)0);
 } else {
  *m0 = ((void*)0);
 }
done:
 DN_BH_WUNLOCK();
 if (m)
  dummynet_send(m);
 return 0;

dropit:
 io_pkt_drop++;
 DN_BH_WUNLOCK();
 if (m)
  FREE_PKT(m);
 *m0 = ((void*)0);
 return (fs && (fs->fs.flags & DN_NOERROR)) ? 0 : ENOBUFS;
}
