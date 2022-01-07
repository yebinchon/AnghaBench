
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tseg_qent {int dummy; } ;


 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int M_WAITOK ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int UMA_ALIGN_PTR ;
 void* counter_u64_alloc (int ) ;
 void* merge_fwd ;
 void* merge_into ;
 int nmbclusters ;
 int nmbclusters_change ;
 void* reass_entry ;
 void* reass_fullwalk ;
 void* reass_nospace ;
 void* reass_path1 ;
 void* reass_path2 ;
 void* reass_path3 ;
 void* reass_path4 ;
 void* reass_path5 ;
 void* reass_path6 ;
 void* reass_path7 ;
 int tcp_reass_maxseg ;
 int tcp_reass_zone ;
 int tcp_reass_zone_change ;
 void* tcp_zero_input ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (int ,int) ;

void
tcp_reass_global_init(void)
{

 tcp_reass_maxseg = nmbclusters / 16;
 TUNABLE_INT_FETCH("net.inet.tcp.reass.maxsegments",
     &tcp_reass_maxseg);
 tcp_reass_zone = uma_zcreate("tcpreass", sizeof (struct tseg_qent),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);

 tcp_reass_maxseg = uma_zone_set_max(tcp_reass_zone,
     tcp_reass_maxseg);
 EVENTHANDLER_REGISTER(nmbclusters_change,
     tcp_reass_zone_change, ((void*)0), EVENTHANDLER_PRI_ANY);

}
