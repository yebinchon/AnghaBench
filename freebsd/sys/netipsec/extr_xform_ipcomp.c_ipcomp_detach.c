
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ip6_encap_detach (int ) ;
 int ip_encap_detach (int ) ;
 int ipcomp_xformsw ;
 int ipe4_cookie ;
 int ipe6_cookie ;
 int xform_detach (int *) ;

__attribute__((used)) static void
ipcomp_detach(void)
{







 xform_detach(&ipcomp_xformsw);
}
