
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CARP_INET ;
 size_t CARP_INET6 ;
 int IPPROTO_CARP ;
 int PF_INET ;
 int PF_INET6 ;
 int SOCK_RAW ;
 int * carp_attach_p ;
 int * carp_demote_adj_p ;
 int * carp_detach_p ;
 int * carp_forus_p ;
 int * carp_get_vhid_p ;
 int * carp_iamatch6_p ;
 int * carp_iamatch_p ;
 int * carp_ioctl_p ;
 int * carp_linkstate_p ;
 int * carp_macmatch6_p ;
 int * carp_master_p ;
 int carp_mtx ;
 int * carp_output_p ;
 int carp_sendall_task ;
 int carp_sx ;
 int ip6proto_unregister (int ) ;
 int ipproto_unregister (int ) ;
 int mtx_destroy (int *) ;
 int mtx_unlock (int *) ;
 int pf_proto_unregister (int ,int ,int ) ;
 int* proto_reg ;
 int sx_destroy (int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
carp_mod_cleanup(void)
{
 carp_ioctl_p = ((void*)0);
 carp_attach_p = ((void*)0);
 carp_detach_p = ((void*)0);
 carp_get_vhid_p = ((void*)0);
 carp_linkstate_p = ((void*)0);
 carp_forus_p = ((void*)0);
 carp_output_p = ((void*)0);
 carp_demote_adj_p = ((void*)0);
 carp_master_p = ((void*)0);
 mtx_unlock(&carp_mtx);
 taskqueue_drain(taskqueue_swi, &carp_sendall_task);
 mtx_destroy(&carp_mtx);
 sx_destroy(&carp_sx);
}
