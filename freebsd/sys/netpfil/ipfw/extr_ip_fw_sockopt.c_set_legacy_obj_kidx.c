
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct opcode_obj_rewrite {int (* update ) (int *,int) ;struct named_object* (* find_bykidx ) (struct ip_fw_chain*,int) ;} ;
struct named_object {int name; } ;
struct ip_fw_rule0 {int cmd_len; int * cmd; } ;
struct ip_fw_chain {int dummy; } ;
typedef int ipfw_insn ;


 int F_LEN (int *) ;
 struct opcode_obj_rewrite* find_op_rw (int *,int*,int *) ;
 long strtol (int ,char**,int) ;
 struct named_object* stub1 (struct ip_fw_chain*,int) ;
 int stub2 (int *,int) ;

__attribute__((used)) static int
set_legacy_obj_kidx(struct ip_fw_chain *ch, struct ip_fw_rule0 *rule)
{
 struct opcode_obj_rewrite *rw;
 struct named_object *no;
 ipfw_insn *cmd;
 char *end;
 long val;
 int cmdlen, error, l;
 uint16_t kidx, uidx;
 uint8_t subtype;

 error = 0;

 l = rule->cmd_len;
 cmd = rule->cmd;
 cmdlen = 0;
 for ( ; l > 0 ; l -= cmdlen, cmd += cmdlen) {
  cmdlen = F_LEN(cmd);


  rw = find_op_rw(cmd, &kidx, &subtype);
  if (rw == ((void*)0))
   continue;


  no = rw->find_bykidx(ch, kidx);
  if (no == ((void*)0))
   continue;

  val = strtol(no->name, &end, 10);
  if (*end == '\0' && val < 65535) {
   uidx = val;
  } else {






   uidx = 65535;
   error = 2;
  }

  rw->update(cmd, uidx);
 }

 return (error);
}
