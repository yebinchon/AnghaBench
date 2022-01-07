
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q_pkt {int pt_qout; int pt_tx; scalar_t__ next; int pktlen; } ;
struct _qs {int qt_qout; int qt_tx; int tx; scalar_t__ prod_tail; int cur_len; int cur_caplen; int cur_pkt; } ;


 int ND (char*,int ,int,scalar_t__,int,int) ;
 int nm_pkt_copy (int ,char*,int ) ;
 scalar_t__ pad (int ) ;
 struct q_pkt* pkt_at (struct _qs*,scalar_t__) ;

__attribute__((used)) static inline int
enq(struct _qs *q)
{
    struct q_pkt *p = pkt_at(q, q->prod_tail);


    nm_pkt_copy(q->cur_pkt, (char *)(p+1), q->cur_caplen);
    p->pktlen = q->cur_len;
    p->pt_qout = q->qt_qout;
    p->pt_tx = q->qt_tx;
    p->next = q->prod_tail + pad(q->cur_len) + sizeof(struct q_pkt);
    ND("enqueue len %d at %d new tail %ld qout %.6f tx %.6f",
        q->cur_len, (int)q->prod_tail, p->next,
        1e-9*p->pt_qout, 1e-9*p->pt_tx);
    q->prod_tail = p->next;
    q->tx++;
    return 0;
}
