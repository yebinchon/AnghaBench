
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int dummy; } ;
struct bstp_port {int bp_flags; } ;


 int BSTP_PORT_CANMIGRATE ;

__attribute__((used)) static void
bstp_migrate_delay_expiry(struct bstp_state *bs, struct bstp_port *bp)
{
 bp->bp_flags |= BSTP_PORT_CANMIGRATE;
}
