
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct vie {int num_valid; int* inst; } ;
struct TYPE_4__ {int gpa; int paging; struct vie vie; } ;
struct TYPE_5__ {TYPE_1__ inst_emul; } ;
struct vm_exit {int rip; TYPE_2__ u; } ;
struct TYPE_6__ {int vmexit_inst_emul; } ;


 int ESRCH ;
 int VMEXIT_ABORT ;
 int VMEXIT_CONTINUE ;
 int emulate_mem (struct vmctx*,int,int ,struct vie*,int *) ;
 int fprintf (int ,char*,...) ;
 TYPE_3__ stats ;
 int stderr ;

__attribute__((used)) static int
vmexit_inst_emul(struct vmctx *ctx, struct vm_exit *vmexit, int *pvcpu)
{
 int err, i;
 struct vie *vie;

 stats.vmexit_inst_emul++;

 vie = &vmexit->u.inst_emul.vie;
 err = emulate_mem(ctx, *pvcpu, vmexit->u.inst_emul.gpa,
     vie, &vmexit->u.inst_emul.paging);

 if (err) {
  if (err == ESRCH) {
   fprintf(stderr, "Unhandled memory access to 0x%lx\n",
       vmexit->u.inst_emul.gpa);
  }

  fprintf(stderr, "Failed to emulate instruction [");
  for (i = 0; i < vie->num_valid; i++) {
   fprintf(stderr, "0x%02x%s", vie->inst[i],
       i != (vie->num_valid - 1) ? " " : "");
  }
  fprintf(stderr, "] at 0x%lx\n", vmexit->rip);
  return (VMEXIT_ABORT);
 }

 return (VMEXIT_CONTINUE);
}
