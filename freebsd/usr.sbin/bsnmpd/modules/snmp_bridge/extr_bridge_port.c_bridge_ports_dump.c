
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_port {int port_no; int p_name; } ;
struct bridge_if {int dummy; } ;


 int LOG_ERR ;
 struct bridge_port* bridge_port_bif_first (struct bridge_if*) ;
 struct bridge_port* bridge_port_bif_next (struct bridge_port*) ;
 int syslog (int ,char*,int ,int ) ;

void
bridge_ports_dump(struct bridge_if *bif)
{
 struct bridge_port *bp;

 for (bp = bridge_port_bif_first(bif); bp != ((void*)0);
     bp = bridge_port_bif_next(bp)) {
  syslog(LOG_ERR, "memif - %s, index - %d",
  bp->p_name, bp->port_no);
 }
}
