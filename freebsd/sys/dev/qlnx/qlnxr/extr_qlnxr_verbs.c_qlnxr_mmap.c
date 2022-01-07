
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct vm_area_struct {unsigned long vm_pgoff; unsigned long vm_end; unsigned long vm_start; int vm_flags; void* vm_page_prot; } ;
struct qlnxr_ucontext {int dpi; int dpi_size; } ;
struct qlnxr_dev {unsigned long db_phys_addr; unsigned long db_size; int * ha; } ;
struct ib_ucontext {int device; } ;
typedef int qlnx_host_t ;


 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int QL_DPRINT11 (int *,char*,...) ;
 int QL_DPRINT12 (int *,char*,...) ;
 int VM_READ ;
 struct qlnxr_dev* get_qlnxr_dev (int ) ;
 struct qlnxr_ucontext* get_qlnxr_ucontext (struct ib_ucontext*) ;
 int io_remap_pfn_range (struct vm_area_struct*,int,unsigned long,unsigned long,void*) ;
 void* pgprot_writecombine (void*) ;
 int qlnxr_search_mmap (struct qlnxr_ucontext*,unsigned long,unsigned long) ;

int
qlnxr_mmap(struct ib_ucontext *context, struct vm_area_struct *vma)
{
 struct qlnxr_ucontext *ucontext = get_qlnxr_ucontext(context);
 struct qlnxr_dev *dev = get_qlnxr_dev((context->device));
 unsigned long vm_page = vma->vm_pgoff << PAGE_SHIFT;
 u64 unmapped_db;
 unsigned long len = (vma->vm_end - vma->vm_start);
 int rc = 0;
 bool found;
 qlnx_host_t *ha;

 ha = dev->ha;




 unmapped_db = dev->db_phys_addr;


 QL_DPRINT12(ha, "qedr_mmap enter vm_page=0x%lx"
  " vm_pgoff=0x%lx unmapped_db=0x%llx db_size=%x, len=%lx\n",
  vm_page, vma->vm_pgoff, unmapped_db,
  dev->db_size, len);

 if ((vma->vm_start & (PAGE_SIZE - 1)) || (len & (PAGE_SIZE - 1))) {
  QL_DPRINT11(ha, "Vma_start not page aligned "
   "vm_start = %ld vma_end = %ld\n", vma->vm_start,
   vma->vm_end);
  return -EINVAL;
 }

 found = qlnxr_search_mmap(ucontext, vm_page, len);
 if (!found) {
  QL_DPRINT11(ha, "Vma_pgoff not found in mapped array = %ld\n",
   vma->vm_pgoff);
  return -EINVAL;
 }

 QL_DPRINT12(ha, "Mapping doorbell bar\n");
 if ((vm_page >= unmapped_db) && (vm_page <= (unmapped_db +
  dev->db_size))) {

  QL_DPRINT12(ha, "Mapping doorbell bar\n");

  vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);

  rc = io_remap_pfn_range(vma, vma->vm_start, vma->vm_pgoff,
         PAGE_SIZE, vma->vm_page_prot);
 } else {
  QL_DPRINT12(ha, "Mapping chains\n");
  rc = io_remap_pfn_range(vma, vma->vm_start,
      vma->vm_pgoff, len, vma->vm_page_prot);
 }



 QL_DPRINT12(ha, "exit [%d]\n", rc);
 return rc;
}
