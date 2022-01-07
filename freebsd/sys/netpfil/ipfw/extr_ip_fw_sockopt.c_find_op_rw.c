
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct opcode_obj_rewrite {scalar_t__ (* classifier ) (TYPE_1__*,int *,int *) ;} ;
struct TYPE_4__ {int opcode; } ;
typedef TYPE_1__ ipfw_insn ;


 scalar_t__ find_op_rw_range (int ,struct opcode_obj_rewrite**,struct opcode_obj_rewrite**) ;
 scalar_t__ stub1 (TYPE_1__*,int *,int *) ;

__attribute__((used)) static struct opcode_obj_rewrite *
find_op_rw(ipfw_insn *cmd, uint16_t *puidx, uint8_t *ptype)
{
 struct opcode_obj_rewrite *rw, *lo, *hi;
 uint16_t uidx;
 uint8_t subtype;

 if (find_op_rw_range(cmd->opcode, &lo, &hi) != 0)
  return (((void*)0));

 for (rw = lo; rw <= hi; rw++) {
  if (rw->classifier(cmd, &uidx, &subtype) == 0) {
   if (puidx != ((void*)0))
    *puidx = uidx;
   if (ptype != ((void*)0))
    *ptype = subtype;
   return (rw);
  }
 }

 return (((void*)0));
}
