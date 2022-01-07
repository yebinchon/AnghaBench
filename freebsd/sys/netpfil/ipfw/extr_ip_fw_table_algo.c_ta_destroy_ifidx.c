
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_info {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct iftable_cfg {int ii; struct iftable_cfg* main_ptr; struct ip_fw_chain* ch; } ;


 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int M_IPFW ;
 int destroy_ifidx_locked ;
 int free (struct iftable_cfg*,int ) ;
 int ipfw_objhash_destroy (int ) ;
 int ipfw_objhash_foreach (int ,int ,struct ip_fw_chain*) ;

__attribute__((used)) static void
ta_destroy_ifidx(void *ta_state, struct table_info *ti)
{
 struct iftable_cfg *icfg;
 struct ip_fw_chain *ch;

 icfg = (struct iftable_cfg *)ta_state;
 ch = icfg->ch;

 if (icfg->main_ptr != ((void*)0))
  free(icfg->main_ptr, M_IPFW);

 IPFW_UH_WLOCK(ch);
 ipfw_objhash_foreach(icfg->ii, destroy_ifidx_locked, ch);
 IPFW_UH_WUNLOCK(ch);

 ipfw_objhash_destroy(icfg->ii);

 free(icfg, M_IPFW);
}
