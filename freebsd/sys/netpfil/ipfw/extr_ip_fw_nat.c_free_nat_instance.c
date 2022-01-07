
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg_nat {int lib; int redir_chain; } ;


 int LibAliasUninit (int ) ;
 int M_IPFW ;
 int del_redir_spool_cfg (struct cfg_nat*,int *) ;
 int free (struct cfg_nat*,int ) ;

__attribute__((used)) static void
free_nat_instance(struct cfg_nat *ptr)
{

 del_redir_spool_cfg(ptr, &ptr->redir_chain);
 LibAliasUninit(ptr->lib);
 free(ptr, M_IPFW);
}
