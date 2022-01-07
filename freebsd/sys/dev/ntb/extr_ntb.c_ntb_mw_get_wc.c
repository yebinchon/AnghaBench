
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_memattr_t ;
struct ntb_child {unsigned int mwoff; } ;
typedef int device_t ;


 int NTB_MW_GET_WC (int ,unsigned int,int *) ;
 struct ntb_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

int
ntb_mw_get_wc(device_t ntb, unsigned mw_idx, vm_memattr_t *mode)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 return (NTB_MW_GET_WC(device_get_parent(ntb), mw_idx + nc->mwoff, mode));
}
