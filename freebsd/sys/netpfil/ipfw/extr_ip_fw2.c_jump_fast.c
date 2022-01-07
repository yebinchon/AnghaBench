
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {scalar_t__ id; int* idxmap; } ;
struct ip_fw {scalar_t__ cached_id; int cached_pos; int rulenum; } ;


 int IP_FW_ARG_TABLEARG (struct ip_fw_chain*,int,int ) ;
 int IP_FW_TARG ;
 int ipfw_find_rule (struct ip_fw_chain*,int,int ) ;
 int skipto ;

__attribute__((used)) static int
jump_fast(struct ip_fw_chain *chain, struct ip_fw *f, int num,
    int tablearg, int jump_backwards)
{
 int f_pos;





 if (num != IP_FW_TARG && f->cached_id == chain->id)
  f_pos = f->cached_pos;
 else {
  int i = IP_FW_ARG_TABLEARG(chain, num, skipto);

  if (jump_backwards == 0 && i <= f->rulenum)
   i = f->rulenum + 1;
  if (chain->idxmap != ((void*)0))
   f_pos = chain->idxmap[i];
  else
   f_pos = ipfw_find_rule(chain, i, 0);

  if (num != IP_FW_TARG) {
   f->cached_id = chain->id;
   f->cached_pos = f_pos;
  }
 }

 return (f_pos);
}
