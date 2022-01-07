
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibif {int name; int sysindex; int index; } ;
struct bridge_port {int admin_ptp; void* oper_ptp; void* oper_edge; void* admin_edge; void* proto_migr; int circuit; int p_name; int port_no; int if_idx; int sysindex; } ;
struct bridge_if {int f_bp; int sysindex; } ;


 int IFNAMSIZ ;
 int LOG_ERR ;
 int StpPortAdminPointToPointType_auto ;
 void* TruthValue_false ;
 int bridge_port_memif_insert (int *,struct bridge_port*,int *) ;
 int bridge_ports ;
 int bzero (struct bridge_port*,int) ;
 int errno ;
 scalar_t__ malloc (int) ;
 int oid_zeroDotZero ;
 int strerror (int ) ;
 int strlcpy (int ,int ,int ) ;
 int syslog (int ,char*,int ) ;

struct bridge_port *
bridge_new_port(struct mibif *mif, struct bridge_if *bif)
{
 struct bridge_port *bp;

 if ((bp = (struct bridge_port *) malloc(sizeof(*bp))) == ((void*)0)) {
  syslog(LOG_ERR, "bridge new member: failed: %s",
   strerror(errno));
  return (((void*)0));
 }

 bzero(bp, sizeof(*bp));

 bp->sysindex = bif->sysindex;
 bp->if_idx = mif->index;
 bp->port_no = mif->sysindex;
 strlcpy(bp->p_name, mif->name, IFNAMSIZ);
 bp->circuit = oid_zeroDotZero;






 bp->proto_migr = TruthValue_false;
 bp->admin_edge = TruthValue_false;
 bp->oper_edge = TruthValue_false;
 bp->oper_ptp = TruthValue_false;
 bp->admin_ptp = StpPortAdminPointToPointType_auto;

 bridge_port_memif_insert(&bridge_ports, bp, &(bif->f_bp));

 return (bp);
}
