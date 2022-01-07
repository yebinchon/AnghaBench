
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int link_check_ch; } ;


 int callout_reset (int *,int,int ,struct port_info*) ;
 int hz ;
 int link_check_callout ;

void
t3_os_link_intr(struct port_info *pi)
{





 callout_reset(&pi->link_check_ch, hz / 4, link_check_callout, pi);
}
