
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_tagname {int dummy; } ;


 int PF_QUEUE_TAG_HASH_SIZE_DEFAULT ;
 int PF_RULE_TAG_HASH_SIZE_DEFAULT ;
 int UMA_ALIGN_PTR ;
 int V_pf_qids ;
 int V_pf_tag_z ;
 int V_pf_tags ;
 int V_pf_vnet_active ;
 int pf_init_tagset (int *,int *,int ) ;
 int pf_queue_tag_hashsize ;
 int pf_rule_tag_hashsize ;
 int pfattach_vnet () ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void
pf_load_vnet(void)
{
 V_pf_tag_z = uma_zcreate("pf tags", sizeof(struct pf_tagname),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);

 pf_init_tagset(&V_pf_tags, &pf_rule_tag_hashsize,
     PF_RULE_TAG_HASH_SIZE_DEFAULT);





 pfattach_vnet();
 V_pf_vnet_active = 1;
}
