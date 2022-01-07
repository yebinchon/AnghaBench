
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_moptions {int imo_head; } ;
struct ip6_moptions {int im6o_head; } ;
struct in_mfilter {int imf_inm; } ;
struct in6_mfilter {int im6f_in6m; } ;
struct carp_if {int cif_naddrs6; int cif_naddrs; struct ip6_moptions cif_im6o; struct ip_moptions cif_imo; } ;
typedef int sa_family_t ;




 int SA_XLOCKED ;
 int carp_sx ;
 int in6_leavegroup (int ,int *) ;
 int in_leavegroup (int ,int *) ;
 struct in6_mfilter* ip6_mfilter_first (int *) ;
 int ip6_mfilter_free (struct in6_mfilter*) ;
 int ip6_mfilter_remove (int *,struct in6_mfilter*) ;
 struct in_mfilter* ip_mfilter_first (int *) ;
 int ip_mfilter_free (struct in_mfilter*) ;
 int ip_mfilter_remove (int *,struct in_mfilter*) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
carp_multicast_cleanup(struct carp_if *cif, sa_family_t sa)
{
 sx_assert(&carp_sx, SA_XLOCKED);

 switch (sa) {
 }
}
