
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat44_cfg_nat {int name; int if_name; int mode; int redir_cnt; int ip; } ;
struct ip_fw_chain {int gencnt; int nat; } ;
struct cfg_nat {int redir_chain; int ip; int lib; int mode; int if_name; int redir_cnt; int id; } ;


 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int IPFW_WLOCK (struct ip_fw_chain*) ;
 int IPFW_WUNLOCK (struct ip_fw_chain*) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct cfg_nat*,int ) ;
 int LIST_REMOVE (struct cfg_nat*,int ) ;
 int LibAliasInit (int *) ;
 int LibAliasSetAddress (int ,int ) ;
 int LibAliasSetMode (int ,int ,int ) ;
 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int _next ;
 int add_redir_spool_cfg (char*,struct cfg_nat*) ;
 int del_redir_spool_cfg (struct cfg_nat*,int *) ;
 int flush_nat_ptrs (struct ip_fw_chain*,int ) ;
 int free_nat_instance (struct cfg_nat*) ;
 struct cfg_nat* lookup_nat_name (int *,int ) ;
 struct cfg_nat* malloc (int,int ,int) ;
 int strlcpy (int ,int ,int) ;
 int strtol (int ,int *,int) ;

__attribute__((used)) static void
nat44_config(struct ip_fw_chain *chain, struct nat44_cfg_nat *ucfg)
{
 struct cfg_nat *ptr, *tcfg;
 int gencnt;




 IPFW_UH_WLOCK(chain);
 gencnt = chain->gencnt;
 ptr = lookup_nat_name(&chain->nat, ucfg->name);
 if (ptr == ((void*)0)) {
  IPFW_UH_WUNLOCK(chain);

  ptr = malloc(sizeof(struct cfg_nat), M_IPFW, M_WAITOK | M_ZERO);
  ptr->lib = LibAliasInit(((void*)0));
  LIST_INIT(&ptr->redir_chain);
 } else {

  IPFW_WLOCK(chain);
  LIST_REMOVE(ptr, _next);
  flush_nat_ptrs(chain, ptr->id);
  IPFW_WUNLOCK(chain);
  IPFW_UH_WUNLOCK(chain);
 }




 ptr->id = strtol(ucfg->name, ((void*)0), 10);





 ptr->ip = ucfg->ip;
 ptr->redir_cnt = ucfg->redir_cnt;
 ptr->mode = ucfg->mode;
 strlcpy(ptr->if_name, ucfg->if_name, sizeof(ptr->if_name));
 LibAliasSetMode(ptr->lib, ptr->mode, ~0);
 LibAliasSetAddress(ptr->lib, ptr->ip);





 del_redir_spool_cfg(ptr, &ptr->redir_chain);

 add_redir_spool_cfg((char *)(ucfg + 1), ptr);
 IPFW_UH_WLOCK(chain);


 tcfg = ((void*)0);
 if (gencnt != chain->gencnt)
     tcfg = lookup_nat_name(&chain->nat, ucfg->name);
 IPFW_WLOCK(chain);
 if (tcfg != ((void*)0))
  LIST_REMOVE(tcfg, _next);
 LIST_INSERT_HEAD(&chain->nat, ptr, _next);
 IPFW_WUNLOCK(chain);
 chain->gencnt++;

 IPFW_UH_WUNLOCK(chain);

 if (tcfg != ((void*)0))
  free_nat_instance(ptr);
}
