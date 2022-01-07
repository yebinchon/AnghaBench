
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct lacp_port {int lp_media; } ;
struct lacp_aggregator {int la_nports; int la_ports; } ;


 int LACP_DPRINTF (struct lacp_port*) ;
 struct lacp_port* TAILQ_FIRST (int *) ;
 int ifmedia_baudrate (int ) ;

__attribute__((used)) static uint64_t
lacp_aggregator_bandwidth(struct lacp_aggregator *la)
{
 struct lacp_port *lp;
 uint64_t speed;

 lp = TAILQ_FIRST(&la->la_ports);
 if (lp == ((void*)0)) {
  return (0);
 }

 speed = ifmedia_baudrate(lp->lp_media);
 speed *= la->la_nports;
 if (speed == 0) {
  LACP_DPRINTF((lp, "speed 0? media=0x%x nports=%d\n",
      lp->lp_media, la->la_nports));
 }

 return (speed);
}
