
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct opcode_obj_rewrite {int etlv; } ;
struct ip_fw_chain {int dummy; } ;
struct ip_fw {int cmd_len; int * cmd; } ;
struct dump_args {int tcount; int bmask; } ;
typedef int ipfw_insn ;


 int F_LEN (int *) ;
 struct opcode_obj_rewrite* find_op_rw (int *,int *,int *) ;
 scalar_t__ ipfw_mark_object_kidx (int ,int ,int ) ;

__attribute__((used)) static void
mark_rule_objects(struct ip_fw_chain *ch, struct ip_fw *rule,
    struct dump_args *da)
{
 struct opcode_obj_rewrite *rw;
 ipfw_insn *cmd;
 int cmdlen, l;
 uint16_t kidx;
 uint8_t subtype;

 l = rule->cmd_len;
 cmd = rule->cmd;
 cmdlen = 0;
 for ( ; l > 0 ; l -= cmdlen, cmd += cmdlen) {
  cmdlen = F_LEN(cmd);

  rw = find_op_rw(cmd, &kidx, &subtype);
  if (rw == ((void*)0))
   continue;

  if (ipfw_mark_object_kidx(da->bmask, rw->etlv, kidx))
   da->tcount++;
 }
}
