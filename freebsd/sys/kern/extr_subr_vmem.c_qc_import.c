
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vmem_addr_t ;
struct TYPE_2__ {int qc_size; int qc_vmem; } ;
typedef TYPE_1__ qcache_t ;


 int KASSERT (int,char*) ;
 int M_WAITOK ;
 int VMEM_ADDR_MAX ;
 int VMEM_ADDR_QCACHE_MIN ;
 scalar_t__ vmem_xalloc (int ,int ,int ,int ,int ,int ,int ,int,scalar_t__*) ;

__attribute__((used)) static int
qc_import(void *arg, void **store, int cnt, int domain, int flags)
{
 qcache_t *qc;
 vmem_addr_t addr;
 int i;

 KASSERT((flags & M_WAITOK) == 0, ("blocking allocation"));

 qc = arg;
 for (i = 0; i < cnt; i++) {
  if (vmem_xalloc(qc->qc_vmem, qc->qc_size, 0, 0, 0,
      VMEM_ADDR_QCACHE_MIN, VMEM_ADDR_MAX, flags, &addr) != 0)
   break;
  store[i] = (void *)addr;
 }
 return (i);
}
