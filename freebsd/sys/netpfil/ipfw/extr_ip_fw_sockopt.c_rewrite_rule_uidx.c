
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int ti ;
struct tid_info {scalar_t__ tlen; void* tlvs; int set; } ;
struct rule_check_info {int object_opcodes; struct obj_idx* obuf; TYPE_3__* krule; TYPE_2__* ctlv; } ;
struct obj_idx {int off; int kidx; } ;
struct ip_fw_chain {int dummy; } ;
typedef int ipfw_obj_ctlv ;
typedef int ipfw_insn ;
struct TYPE_6__ {int * cmd; int set; } ;
struct TYPE_4__ {scalar_t__ length; } ;
struct TYPE_5__ {TYPE_1__ head; } ;


 int M_IPFW ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (struct obj_idx*,int ) ;
 struct obj_idx* malloc (int,int ,int) ;
 int memset (struct tid_info*,int ,int) ;
 int ref_rule_objects (struct ip_fw_chain*,TYPE_3__*,struct rule_check_info*,struct obj_idx*,struct tid_info*) ;
 int update_opcode_kidx (int *,int ) ;

__attribute__((used)) static int
rewrite_rule_uidx(struct ip_fw_chain *chain, struct rule_check_info *ci)
{
 int error;
 ipfw_insn *cmd;
 uint8_t type;
 struct obj_idx *p, *pidx_first, *pidx_last;
 struct tid_info ti;





 if (ci->object_opcodes <= (sizeof(ci->obuf)/sizeof(ci->obuf[0]))) {

  pidx_first = ci->obuf;
 } else
  pidx_first = malloc(
      ci->object_opcodes * sizeof(struct obj_idx),
      M_IPFW, M_WAITOK | M_ZERO);

 error = 0;
 type = 0;
 memset(&ti, 0, sizeof(ti));


 ti.set = ci->krule->set;
 if (ci->ctlv != ((void*)0)) {
  ti.tlvs = (void *)(ci->ctlv + 1);
  ti.tlen = ci->ctlv->head.length - sizeof(ipfw_obj_ctlv);
 }


 error = ref_rule_objects(chain, ci->krule, ci, pidx_first, &ti);
 if (error != 0)
  goto free;






 p = pidx_first;
 pidx_last = pidx_first + ci->object_opcodes;
 for (p = pidx_first; p < pidx_last; p++) {
  cmd = ci->krule->cmd + p->off;
  update_opcode_kidx(cmd, p->kidx);
 }

free:
 if (pidx_first != ci->obuf)
  free(pidx_first, M_IPFW);

 return (error);
}
