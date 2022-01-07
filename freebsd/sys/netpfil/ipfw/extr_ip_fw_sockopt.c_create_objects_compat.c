
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct tid_info {scalar_t__ atype; int type; int uidx; } ;
struct opcode_obj_rewrite {int (* create_object ) (struct ip_fw_chain*,struct tid_info*,scalar_t__*) ;} ;
struct obj_idx {scalar_t__ kidx; int off; int type; int uidx; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_5__ {int opcode; } ;
typedef TYPE_1__ ipfw_insn ;


 int EOPNOTSUPP ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int KASSERT (int ,char*) ;
 struct opcode_obj_rewrite* find_op_rw (TYPE_1__*,int *,int *) ;
 int stub1 (struct ip_fw_chain*,struct tid_info*,scalar_t__*) ;
 int unref_oib_objects (struct ip_fw_chain*,TYPE_1__*,struct obj_idx*,struct obj_idx*) ;

int
create_objects_compat(struct ip_fw_chain *ch, ipfw_insn *cmd,
    struct obj_idx *oib, struct obj_idx *pidx, struct tid_info *ti)
{
 struct opcode_obj_rewrite *rw;
 struct obj_idx *p;
 uint16_t kidx;
 int error;





 for (p = oib; p < pidx; p++) {
  if (p->kidx != 0)
   continue;

  ti->uidx = p->uidx;
  ti->type = p->type;
  ti->atype = 0;

  rw = find_op_rw(cmd + p->off, ((void*)0), ((void*)0));
  KASSERT(rw != ((void*)0), ("Unable to find handler for op %d",
      (cmd + p->off)->opcode));

  if (rw->create_object == ((void*)0))
   error = EOPNOTSUPP;
  else
   error = rw->create_object(ch, ti, &kidx);
  if (error == 0) {
   p->kidx = kidx;
   continue;
  }





  IPFW_UH_WLOCK(ch);
  unref_oib_objects(ch, cmd, oib, pidx);
  IPFW_UH_WUNLOCK(ch);

  return (error);
 }

 return (0);
}
