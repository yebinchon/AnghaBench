
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nmbclusters ;
 int tcp_reass_maxseg ;
 int tcp_reass_zone ;
 int uma_zone_set_max (int ,int) ;

__attribute__((used)) static void
tcp_reass_zone_change(void *tag)
{


 tcp_reass_maxseg = nmbclusters / 16;
 tcp_reass_maxseg = uma_zone_set_max(tcp_reass_zone,
     tcp_reass_maxseg);
}
