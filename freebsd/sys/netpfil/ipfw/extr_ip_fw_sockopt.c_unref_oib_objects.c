
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct opcode_obj_rewrite {struct named_object* (* find_bykidx ) (struct ip_fw_chain*,scalar_t__) ;} ;
struct obj_idx {scalar_t__ kidx; int off; } ;
struct named_object {int refcnt; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_4__ {int opcode; } ;
typedef TYPE_1__ ipfw_insn ;


 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int KASSERT (int ,char*) ;
 struct opcode_obj_rewrite* find_op_rw (TYPE_1__*,int *,int *) ;
 struct named_object* stub1 (struct ip_fw_chain*,scalar_t__) ;

__attribute__((used)) static void
unref_oib_objects(struct ip_fw_chain *ch, ipfw_insn *cmd, struct obj_idx *oib,
    struct obj_idx *end)
{
 struct opcode_obj_rewrite *rw;
 struct named_object *no;
 struct obj_idx *p;

 IPFW_UH_WLOCK_ASSERT(ch);

 for (p = oib; p < end; p++) {
  if (p->kidx == 0)
   continue;

  rw = find_op_rw(cmd + p->off, ((void*)0), ((void*)0));
  KASSERT(rw != ((void*)0), ("Unable to find handler for op %d",
      (cmd + p->off)->opcode));


  no = rw->find_bykidx(ch, p->kidx);
  KASSERT(no != ((void*)0), ("Ref'd object %d disappeared", p->kidx));
  no->refcnt--;
 }
}
