
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct TYPE_3__ {int exitcode; int exitinfo1; int exitinfo2; } ;
struct TYPE_4__ {TYPE_1__ svm; } ;
struct vm_exit {int rip; int inst_length; TYPE_2__ u; } ;


 int VMEXIT_ABORT ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static int
vmexit_svm(struct vmctx *ctx, struct vm_exit *vmexit, int *pvcpu)
{

 fprintf(stderr, "vm exit[%d]\n", *pvcpu);
 fprintf(stderr, "\treason\t\tSVM\n");
 fprintf(stderr, "\trip\t\t0x%016lx\n", vmexit->rip);
 fprintf(stderr, "\tinst_length\t%d\n", vmexit->inst_length);
 fprintf(stderr, "\texitcode\t%#lx\n", vmexit->u.svm.exitcode);
 fprintf(stderr, "\texitinfo1\t%#lx\n", vmexit->u.svm.exitinfo1);
 fprintf(stderr, "\texitinfo2\t%#lx\n", vmexit->u.svm.exitinfo2);
 return (VMEXIT_ABORT);
}
