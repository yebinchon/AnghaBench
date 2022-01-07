
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int dummy; } ;


 size_t CARP_INET ;
 size_t CARP_INET6 ;
 int IPPROTO_CARP ;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int PF_INET ;
 int PF_INET6 ;
 int carp_attach ;
 int carp_attach_p ;
 int carp_demote_adj ;
 int carp_demote_adj_p ;
 int carp_detach ;
 int carp_detach_p ;
 int carp_forus ;
 int carp_forus_p ;
 int carp_get_vhid ;
 int carp_get_vhid_p ;
 int carp_iamatch ;
 int carp_iamatch6 ;
 int carp_iamatch6_p ;
 int carp_iamatch_p ;
 int carp_ioctl ;
 int carp_ioctl_p ;
 int carp_linkstate ;
 int carp_linkstate_p ;
 int carp_list ;
 int carp_macmatch6 ;
 int carp_macmatch6_p ;
 int carp_master ;
 int carp_master_p ;
 int carp_mod_cleanup () ;
 int carp_mtx ;
 int carp_output ;
 int carp_output_p ;
 int carp_sx ;
 int in6_carp_protosw ;
 struct protosw in_carp_protosw ;
 int ip6proto_register (int ) ;
 int ipproto_register (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pf_proto_register (int ,struct protosw*) ;
 int printf (char*,int) ;
 int* proto_reg ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
carp_mod_load(void)
{
 int err;

 mtx_init(&carp_mtx, "carp_mtx", ((void*)0), MTX_DEF);
 sx_init(&carp_sx, "carp_sx");
 LIST_INIT(&carp_list);
 carp_get_vhid_p = carp_get_vhid;
 carp_forus_p = carp_forus;
 carp_output_p = carp_output;
 carp_linkstate_p = carp_linkstate;
 carp_ioctl_p = carp_ioctl;
 carp_attach_p = carp_attach;
 carp_detach_p = carp_detach;
 carp_demote_adj_p = carp_demote_adj;
 carp_master_p = carp_master;
 return (0);
}
