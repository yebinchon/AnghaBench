
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {scalar_t__ type; int uidx; } ;
struct opcode_obj_rewrite {int (* find_byname ) (struct ip_fw_chain*,struct tid_info*,struct named_object**) ;int (* update ) (int *,int ) ;} ;
struct obj_idx {scalar_t__ type; int uidx; } ;
struct named_object {scalar_t__ subtype; int kidx; int refcnt; } ;
struct ip_fw_chain {int dummy; } ;
typedef int ipfw_insn ;


 int EINVAL ;
 struct opcode_obj_rewrite* find_op_rw (int *,int *,scalar_t__*) ;
 int stub1 (struct ip_fw_chain*,struct tid_info*,struct named_object**) ;
 int stub2 (int *,int ) ;

__attribute__((used)) static int
ref_opcode_object(struct ip_fw_chain *ch, ipfw_insn *cmd, struct tid_info *ti,
    struct obj_idx *pidx, int *unresolved)
{
 struct named_object *no;
 struct opcode_obj_rewrite *rw;
 int error;


 rw = find_op_rw(cmd, &ti->uidx, &ti->type);
 if (rw == ((void*)0))
  return (0);


 pidx->uidx = ti->uidx;
 pidx->type = ti->type;


 error = rw->find_byname(ch, ti, &no);
 if (error != 0)
  return (error);
 if (no == ((void*)0)) {




  *unresolved = 1;
  return (0);
 }





 if (ti->type != no->subtype)
  return (EINVAL);


 no->refcnt++;
 rw->update(cmd, no->kidx);
 return (0);
}
