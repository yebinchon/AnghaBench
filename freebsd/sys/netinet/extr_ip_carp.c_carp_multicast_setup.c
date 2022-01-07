
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_moptions {int imo_multicast_vif; int imo_multicast_loop; void* imo_multicast_ttl; struct ifnet* imo_multicast_ifp; int imo_head; } ;
struct ip6_moptions {int im6o_head; struct ifnet* im6o_multicast_ifp; void* im6o_multicast_hlim; } ;
struct in_mfilter {int imf_inm; } ;
struct in_addr {void* s_addr; } ;
struct in6_mfilter {int im6f_in6m; } ;
struct in6_addr {int* s6_addr8; void** s6_addr32; void** s6_addr16; } ;
struct ifnet {int dummy; } ;
struct carp_if {struct ip6_moptions cif_im6o; struct ip_moptions cif_imo; struct ifnet* cif_ifp; } ;
typedef int sa_family_t ;
typedef int in6 ;




 void* CARP_DFLTTL ;
 int INADDR_CARP_GROUP ;
 int M_WAITOK ;
 int bzero (struct in6_addr*,int) ;
 void* htonl (int) ;
 void* htons (int) ;
 int in6_joingroup (struct ifnet*,struct in6_addr*,int *,int *,int ) ;
 int in6_leavegroup (int ,int *) ;
 int in6_setscope (struct in6_addr*,struct ifnet*,int *) ;
 int in_joingroup (struct ifnet*,struct in_addr*,int *,int *) ;
 struct in6_mfilter* ip6_mfilter_alloc (int ,int ,int ) ;
 int ip6_mfilter_first (int *) ;
 int ip6_mfilter_free (struct in6_mfilter*) ;
 int ip6_mfilter_init (int *) ;
 int ip6_mfilter_insert (int *,struct in6_mfilter*) ;
 struct in_mfilter* ip_mfilter_alloc (int ,int ,int ) ;
 int * ip_mfilter_first (int *) ;
 int ip_mfilter_free (struct in_mfilter*) ;
 int ip_mfilter_init (int *) ;
 int ip_mfilter_insert (int *,struct in_mfilter*) ;

__attribute__((used)) static int
carp_multicast_setup(struct carp_if *cif, sa_family_t sa)
{
 struct ifnet *ifp = cif->cif_ifp;
 int error = 0;

 switch (sa) {
 }

 return (error);
}
