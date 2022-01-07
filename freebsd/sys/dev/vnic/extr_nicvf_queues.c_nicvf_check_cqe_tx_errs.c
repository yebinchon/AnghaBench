
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nicvf {int dummy; } ;
struct cqe_send_t {int send_status; } ;
struct TYPE_2__ {int csum_overflow; int csum_overlap; int mem_fault; int tstmp_timeout; int tstmp_conflict; int data_fault; int lock_viol; int mem_seq_err; int data_seq_err; int imm_size_oflow; int subdesc_err; int hdr_cons_err; int desc_fault; int good; } ;
struct cmp_queue_stats {TYPE_1__ tx; } ;
struct cmp_queue {struct cmp_queue_stats stats; } ;
int
nicvf_check_cqe_tx_errs(struct nicvf *nic, struct cmp_queue *cq,
    struct cqe_send_t *cqe_tx)
{
 struct cmp_queue_stats *stats = &cq->stats;

 switch (cqe_tx->send_status) {
 case 136:
  stats->tx.good++;
  return (0);
 case 137:
  stats->tx.desc_fault++;
  break;
 case 135:
  stats->tx.hdr_cons_err++;
  break;
 case 130:
  stats->tx.subdesc_err++;
  break;
 case 134:
  stats->tx.imm_size_oflow++;
  break;
 case 138:
  stats->tx.data_seq_err++;
  break;
 case 131:
  stats->tx.mem_seq_err++;
  break;
 case 133:
  stats->tx.lock_viol++;
  break;
 case 139:
  stats->tx.data_fault++;
  break;
 case 129:
  stats->tx.tstmp_conflict++;
  break;
 case 128:
  stats->tx.tstmp_timeout++;
  break;
 case 132:
  stats->tx.mem_fault++;
  break;
 case 140:
  stats->tx.csum_overlap++;
  break;
 case 141:
  stats->tx.csum_overflow++;
  break;
 }

 return (1);
}
