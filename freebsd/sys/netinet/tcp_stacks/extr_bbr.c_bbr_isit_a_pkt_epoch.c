
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int rc_pkt_epoch_del; } ;
struct tcp_bbr {int rc_is_pkt_epoch_now; TYPE_1__ r_ctl; } ;
struct bbr_sendmap {int r_delivered; } ;
typedef int int32_t ;


 scalar_t__ SEQ_GEQ (int ,int ) ;

__attribute__((used)) static inline void
bbr_isit_a_pkt_epoch(struct tcp_bbr *bbr, uint32_t cts, struct bbr_sendmap *rsm, int32_t line, int32_t cum_acked)
{
 if (SEQ_GEQ(rsm->r_delivered, bbr->r_ctl.rc_pkt_epoch_del)) {
  bbr->rc_is_pkt_epoch_now = 1;
 }
}
