
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct if_ath_alq_tx_fifo_push {int frame_cnt; int fifo_depth; int nframes; int txq; } ;
struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
typedef int p ;


 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct if_ath_alq_tx_fifo_push*,int *,int) ;
 int printf (char*,unsigned int,unsigned int,unsigned long long,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

void
ath_alq_print_edma_tx_fifo_push(struct if_ath_alq_payload *a)
{
 struct if_ath_alq_tx_fifo_push p;

 memcpy(&p, &a->payload, sizeof(p));
 printf("[%u.%06u] [%llu] TXPUSH txq=%d, nframes=%d, fifodepth=%d, frmcount=%d\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid),
     be32toh(p.txq),
     be32toh(p.nframes),
     be32toh(p.fifo_depth),
     be32toh(p.frame_cnt));
}
