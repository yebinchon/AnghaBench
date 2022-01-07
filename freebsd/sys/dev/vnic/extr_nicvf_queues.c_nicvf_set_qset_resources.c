
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_set {int sq_cnt; int rq_cnt; int cq_len; int sq_len; int rbdr_len; int cq_cnt; int rbdr_cnt; } ;
struct nicvf {int tx_queues; int rx_queues; struct queue_set* qs; } ;


 int CMP_QUEUE_CNT ;
 int CMP_QUEUE_LEN ;
 int M_NICVF ;
 int M_WAITOK ;
 int M_ZERO ;
 int RBDR_CNT ;
 int RCV_BUF_COUNT ;
 int RCV_QUEUE_CNT ;
 int SND_QUEUE_CNT ;
 int SND_QUEUE_LEN ;
 struct queue_set* malloc (int,int ,int) ;

int
nicvf_set_qset_resources(struct nicvf *nic)
{
 struct queue_set *qs;

 qs = malloc(sizeof(*qs), M_NICVF, (M_ZERO | M_WAITOK));
 nic->qs = qs;


 qs->rbdr_cnt = RBDR_CNT;
 qs->rq_cnt = RCV_QUEUE_CNT;

 qs->sq_cnt = SND_QUEUE_CNT;
 qs->cq_cnt = CMP_QUEUE_CNT;


 qs->rbdr_len = RCV_BUF_COUNT;
 qs->sq_len = SND_QUEUE_LEN;
 qs->cq_len = CMP_QUEUE_LEN;

 nic->rx_queues = qs->rq_cnt;
 nic->tx_queues = qs->sq_cnt;

 return (0);
}
