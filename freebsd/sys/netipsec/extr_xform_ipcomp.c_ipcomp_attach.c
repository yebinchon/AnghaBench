
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_WAITOK ;
 int ip6_encap_attach (int *,int *,int ) ;
 int ip_encap_attach (int *,int *,int ) ;
 int ipcomp_xformsw ;
 int ipe4_cookie ;
 int ipe6_cookie ;
 int ipv4_encap_cfg ;
 int ipv6_encap_cfg ;
 int xform_attach (int *) ;

__attribute__((used)) static void
ipcomp_attach(void)
{







 xform_attach(&ipcomp_xformsw);
}
