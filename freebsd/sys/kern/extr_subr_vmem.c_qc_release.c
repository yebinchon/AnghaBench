
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vmem_addr_t ;
struct TYPE_2__ {int qc_size; int qc_vmem; } ;
typedef TYPE_1__ qcache_t ;


 int vmem_xfree (int ,int ,int ) ;

__attribute__((used)) static void
qc_release(void *arg, void **store, int cnt)
{
 qcache_t *qc;
 int i;

 qc = arg;
 for (i = 0; i < cnt; i++)
  vmem_xfree(qc->qc_vmem, (vmem_addr_t)store[i], qc->qc_size);
}
