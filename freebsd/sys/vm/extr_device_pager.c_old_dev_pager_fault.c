
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_ooffset_t ;
typedef TYPE_2__* vm_object_t ;
typedef int vm_memattr_t ;
struct thread {struct file* td_fpop; } ;
struct file {int dummy; } ;
struct cdevsw {int (* d_mmap ) (struct cdev*,int ,int *,int,int*) ;int d_flags; char* d_name; } ;
struct cdev {int dummy; } ;
struct TYPE_17__ {int memattr; struct cdev* handle; } ;
struct TYPE_16__ {int flags; int pindex; } ;


 int D_MEM ;
 int PG_FICTITIOUS ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 int VM_PAGER_FAIL ;
 int VM_PAGER_OK ;
 struct thread* curthread ;
 struct cdevsw* dev_refthread (struct cdev*,int*) ;
 int dev_relthread (struct cdev*,int) ;
 int pmap_page_get_memattr (TYPE_1__*) ;
 int printf (char*,...) ;
 int stub1 (struct cdev*,int ,int *,int,int*) ;
 int vm_page_free (TYPE_1__*) ;
 TYPE_1__* vm_page_getfake (int ,int) ;
 int vm_page_replace_checked (TYPE_1__*,TYPE_2__*,int ,TYPE_1__*) ;
 int vm_page_updatefake (TYPE_1__*,int ,int) ;
 int vm_page_valid (TYPE_1__*) ;
 TYPE_1__* vm_phys_paddr_to_vm_page (int ) ;

__attribute__((used)) static int
old_dev_pager_fault(vm_object_t object, vm_ooffset_t offset, int prot,
    vm_page_t *mres)
{
 vm_paddr_t paddr;
 vm_page_t m_paddr, page;
 struct cdev *dev;
 struct cdevsw *csw;
 struct file *fpop;
 struct thread *td;
 vm_memattr_t memattr, memattr1;
 int ref, ret;

 memattr = object->memattr;

 VM_OBJECT_WUNLOCK(object);

 dev = object->handle;
 csw = dev_refthread(dev, &ref);
 if (csw == ((void*)0)) {
  VM_OBJECT_WLOCK(object);
  return (VM_PAGER_FAIL);
 }
 td = curthread;
 fpop = td->td_fpop;
 td->td_fpop = ((void*)0);
 ret = csw->d_mmap(dev, offset, &paddr, prot, &memattr);
 td->td_fpop = fpop;
 dev_relthread(dev, ref);
 if (ret != 0) {
  printf(
     "WARNING: dev_pager_getpage: map function returns error %d", ret);
  VM_OBJECT_WLOCK(object);
  return (VM_PAGER_FAIL);
 }


 if ((m_paddr = vm_phys_paddr_to_vm_page(paddr)) != ((void*)0) &&
     (memattr1 = pmap_page_get_memattr(m_paddr)) != memattr) {





  if ((csw->d_flags & D_MEM) == 0) {
   printf("WARNING: Device driver %s has set "
       "\"memattr\" inconsistently (drv %u pmap %u).\n",
       csw->d_name, memattr, memattr1);
  }
  memattr = memattr1;
 }
 if (((*mres)->flags & PG_FICTITIOUS) != 0) {




  page = *mres;
  VM_OBJECT_WLOCK(object);
  vm_page_updatefake(page, paddr, memattr);
 } else {




  page = vm_page_getfake(paddr, memattr);
  VM_OBJECT_WLOCK(object);
  vm_page_replace_checked(page, object, (*mres)->pindex, *mres);
  vm_page_free(*mres);
  *mres = page;
 }
 vm_page_valid(page);
 return (VM_PAGER_OK);
}
