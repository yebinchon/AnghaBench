
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_tcn_unit {int dummy; } ;
struct bstp_state {int dummy; } ;
struct bstp_port {int bp_rcvdtcn; } ;


 int bstp_update_tc (struct bstp_port*) ;

__attribute__((used)) static void
bstp_received_tcn(struct bstp_state *bs, struct bstp_port *bp,
    struct bstp_tcn_unit *tcn)
{
 bp->bp_rcvdtcn = 1;
 bstp_update_tc(bp);
}
