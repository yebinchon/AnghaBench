
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct opcode_obj_rewrite {int (* update ) (TYPE_1__*,int ) ;} ;
struct TYPE_5__ {int opcode; } ;
typedef TYPE_1__ ipfw_insn ;


 int KASSERT (int ,char*) ;
 struct opcode_obj_rewrite* find_op_rw (TYPE_1__*,int *,int *) ;
 int stub1 (TYPE_1__*,int ) ;

void
update_opcode_kidx(ipfw_insn *cmd, uint16_t idx)
{
 struct opcode_obj_rewrite *rw;

 rw = find_op_rw(cmd, ((void*)0), ((void*)0));
 KASSERT(rw != ((void*)0), ("No handler to update opcode %d", cmd->opcode));
 rw->update(cmd, idx);
}
