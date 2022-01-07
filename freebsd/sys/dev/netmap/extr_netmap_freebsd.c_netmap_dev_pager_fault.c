
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef TYPE_2__* vm_object_t ;
typedef int vm_memattr_t ;
struct netmap_vm_handle_t {struct netmap_priv_d* priv; } ;
struct netmap_priv_d {struct netmap_adapter* np_na; } ;
struct netmap_adapter {int nm_mem; } ;
typedef int intmax_t ;
struct TYPE_16__ {int memattr; struct netmap_vm_handle_t* handle; } ;
struct TYPE_15__ {int flags; } ;


 int OFF_TO_IDX (scalar_t__) ;
 int PG_FICTITIOUS ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 int VM_PAGER_FAIL ;
 int VM_PAGER_OK ;
 scalar_t__ netmap_mem_ofstophys (int ,scalar_t__) ;
 int nm_prdis (char*,TYPE_2__*,int ,int,TYPE_1__**) ;
 int vm_page_free (TYPE_1__*) ;
 TYPE_1__* vm_page_getfake (scalar_t__,int ) ;
 int vm_page_insert (TYPE_1__*,TYPE_2__*,int ) ;
 int vm_page_updatefake (TYPE_1__*,scalar_t__,int ) ;
 int vm_page_valid (TYPE_1__*) ;

__attribute__((used)) static int
netmap_dev_pager_fault(vm_object_t object, vm_ooffset_t offset,
 int prot, vm_page_t *mres)
{
 struct netmap_vm_handle_t *vmh = object->handle;
 struct netmap_priv_d *priv = vmh->priv;
 struct netmap_adapter *na = priv->np_na;
 vm_paddr_t paddr;
 vm_page_t page;
 vm_memattr_t memattr;
 vm_pindex_t pidx;

 nm_prdis("object %p offset %jd prot %d mres %p",
   object, (intmax_t)offset, prot, mres);
 memattr = object->memattr;
 pidx = OFF_TO_IDX(offset);
 paddr = netmap_mem_ofstophys(na->nm_mem, offset);
 if (paddr == 0)
  return VM_PAGER_FAIL;

 if (((*mres)->flags & PG_FICTITIOUS) != 0) {




  page = *mres;
  vm_page_updatefake(page, paddr, memattr);
 } else {
  VM_OBJECT_UNLOCK(object);
  page = vm_page_getfake(paddr, memattr);
  VM_OBJECT_LOCK(object);
  vm_page_free(*mres);
  *mres = page;
  vm_page_insert(page, object, pidx);
 }
 vm_page_valid(page);
 return (VM_PAGER_OK);
}
