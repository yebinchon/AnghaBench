
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int bs_migration_delay; } ;
struct bstp_port {int bp_path_cost; int bp_protover; int bp_flags; int bp_migrate_delay_timer; int bp_operedge; struct bstp_state* bp_bs; } ;


 int BSTP_PORT_CANMIGRATE ;


 int DPRINTF (char*,int) ;
 int bstp_timer_start (int *,int ) ;
 int bstp_timer_stop (int *) ;

__attribute__((used)) static void
bstp_set_port_proto(struct bstp_port *bp, int proto)
{
 struct bstp_state *bs = bp->bp_bs;


 switch (proto) {
  case 128:

   bstp_timer_stop(&bp->bp_migrate_delay_timer);

   bp->bp_operedge = 0;

   if (bp->bp_path_cost > 65535)
    bp->bp_path_cost = 65535;
   break;

  case 129:
   bstp_timer_start(&bp->bp_migrate_delay_timer,
       bs->bs_migration_delay);
   break;

  default:
   DPRINTF("Unsupported STP version %d\n", proto);
   return;
 }

 bp->bp_protover = proto;
 bp->bp_flags &= ~BSTP_PORT_CANMIGRATE;
}
