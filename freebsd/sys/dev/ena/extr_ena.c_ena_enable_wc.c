
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
struct resource {int dummy; } ;


 int ENA_ALERT ;
 int EOPNOTSUPP ;
 int VM_MEMATTR_WRITE_COMBINING ;
 int ena_trace (int ,char*,int) ;
 int pmap_change_attr (scalar_t__,int ,int ) ;
 int rman_get_size (struct resource*) ;
 scalar_t__ rman_get_virtual (struct resource*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ena_enable_wc(struct resource *res)
{

 vm_offset_t va;
 vm_size_t len;
 int rc;

 va = (vm_offset_t)rman_get_virtual(res);
 len = rman_get_size(res);

 rc = pmap_change_attr(va, len, VM_MEMATTR_WRITE_COMBINING);
 if (unlikely(rc != 0)) {
  ena_trace(ENA_ALERT, "pmap_change_attr failed, %d\n", rc);
  return (rc);
 }

 return (0);

 return (EOPNOTSUPP);
}
