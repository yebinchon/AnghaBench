
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int dummy; } ;
struct bstp_port {int bp_infois; } ;


 int BSTP_INFO_DISABLED ;

__attribute__((used)) static void
bstp_disable_port(struct bstp_state *bs, struct bstp_port *bp)
{
 bp->bp_infois = BSTP_INFO_DISABLED;
}
