
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kaiocb {TYPE_1__* userproc; } ;
struct TYPE_2__ {int p_vmspace; } ;


 int vmspace_switch_aio (int ) ;

void
aio_switch_vmspace(struct kaiocb *job)
{

 vmspace_switch_aio(job->userproc->p_vmspace);
}
