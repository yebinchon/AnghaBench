
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_page_prot; int vm_pgoff; } ;
struct mlx5_uuar_info {unsigned long num_uars; TYPE_1__* uars; } ;
struct mlx5_ib_ucontext {struct mlx5_uuar_info uuari; } ;
struct mlx5_ib_dev {int dummy; } ;
typedef int phys_addr_t ;
typedef int pgprot_t ;
typedef enum mlx5_ib_mmap_cmd { ____Placeholder_mlx5_ib_mmap_cmd } mlx5_ib_mmap_cmd ;
struct TYPE_2__ {int index; } ;


 int EAGAIN ;
 int EINVAL ;
 int EPERM ;



 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 unsigned long get_index (int ) ;
 int io_remap_pfn_range (struct vm_area_struct*,scalar_t__,int,scalar_t__,int ) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,unsigned long,...) ;
 int mlx5_ib_err (struct mlx5_ib_dev*,char*,int,unsigned long long,int*,int ) ;
 int mlx5_ib_set_vma_data (struct vm_area_struct*,struct mlx5_ib_ucontext*) ;
 int mmap_cmd2str (int) ;
 int pat_enabled () ;
 int pgprot_noncached (int ) ;
 int pgprot_writecombine (int ) ;
 int uar_index2pfn (struct mlx5_ib_dev*,int ) ;

__attribute__((used)) static int uar_mmap(struct mlx5_ib_dev *dev, enum mlx5_ib_mmap_cmd cmd,
      struct vm_area_struct *vma,
      struct mlx5_ib_ucontext *context)
{
 struct mlx5_uuar_info *uuari = &context->uuari;
 int err;
 unsigned long idx;
 phys_addr_t pfn, pa;
 pgprot_t prot;

 switch (cmd) {
 case 128:





   return -EPERM;


 case 129:

  prot = pgprot_writecombine(vma->vm_page_prot);
  break;
 case 130:
  prot = pgprot_noncached(vma->vm_page_prot);
  break;
 default:
  return -EINVAL;
 }

 if (vma->vm_end - vma->vm_start != PAGE_SIZE)
  return -EINVAL;

 idx = get_index(vma->vm_pgoff);
 if (idx >= uuari->num_uars)
  return -EINVAL;

 pfn = uar_index2pfn(dev, uuari->uars[idx].index);
 mlx5_ib_dbg(dev, "uar idx 0x%lx, pfn %pa\n", idx, &pfn);

 vma->vm_page_prot = prot;
 err = io_remap_pfn_range(vma, vma->vm_start, pfn,
     PAGE_SIZE, vma->vm_page_prot);
 if (err) {
  mlx5_ib_err(dev, "io_remap_pfn_range failed with error=%d, vm_start=0x%llx, pfn=%pa, mmap_cmd=%s\n",
       err, (unsigned long long)vma->vm_start, &pfn, mmap_cmd2str(cmd));
  return -EAGAIN;
 }

 pa = pfn << PAGE_SHIFT;
 mlx5_ib_dbg(dev, "mapped %s at 0x%llx, PA %pa\n", mmap_cmd2str(cmd),
      (unsigned long long)vma->vm_start, &pa);

 return mlx5_ib_set_vma_data(vma, context);
}
