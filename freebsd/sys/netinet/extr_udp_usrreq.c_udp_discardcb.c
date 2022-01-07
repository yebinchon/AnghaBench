
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udpcb {int dummy; } ;


 int V_udpcb_zone ;
 int uma_zfree (int ,struct udpcb*) ;

void
udp_discardcb(struct udpcb *up)
{

 uma_zfree(V_udpcb_zone, up);
}
