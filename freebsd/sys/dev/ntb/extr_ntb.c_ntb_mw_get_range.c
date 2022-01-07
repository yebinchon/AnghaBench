
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
struct ntb_child {unsigned int mwoff; } ;
typedef int device_t ;
typedef int caddr_t ;
typedef int bus_addr_t ;


 int NTB_MW_GET_RANGE (int ,unsigned int,int *,int *,size_t*,size_t*,size_t*,int *) ;
 struct ntb_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

int
ntb_mw_get_range(device_t ntb, unsigned mw_idx, vm_paddr_t *base,
    caddr_t *vbase, size_t *size, size_t *align, size_t *align_size,
    bus_addr_t *plimit)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 return (NTB_MW_GET_RANGE(device_get_parent(ntb), mw_idx + nc->mwoff,
     base, vbase, size, align, align_size, plimit));
}
