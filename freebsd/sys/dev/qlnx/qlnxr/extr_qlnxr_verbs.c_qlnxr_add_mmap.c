
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct qlnxr_ucontext {int mm_list_lock; int mm_head; TYPE_1__* dev; } ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ phy_addr; } ;
struct qlnxr_mm {TYPE_2__ key; int entry; } ;
typedef int qlnx_host_t ;
struct TYPE_3__ {int * ha; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int QL_DPRINT11 (int *,char*) ;
 int QL_DPRINT12 (int *,char*,...) ;
 struct qlnxr_mm* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ roundup (unsigned long,int ) ;

__attribute__((used)) static int
qlnxr_add_mmap(struct qlnxr_ucontext *uctx, u64 phy_addr, unsigned long len)
{
 struct qlnxr_mm *mm;
 qlnx_host_t *ha;

 ha = uctx->dev->ha;

 QL_DPRINT12(ha, "enter\n");

 mm = kzalloc(sizeof(*mm), GFP_KERNEL);
 if (mm == ((void*)0)) {
  QL_DPRINT11(ha, "mm = NULL\n");
  return -ENOMEM;
 }

 mm->key.phy_addr = phy_addr;
 mm->key.len = roundup(len, PAGE_SIZE);
 INIT_LIST_HEAD(&mm->entry);

 mutex_lock(&uctx->mm_list_lock);
 list_add(&mm->entry, &uctx->mm_head);
 mutex_unlock(&uctx->mm_list_lock);

 QL_DPRINT12(ha, "added (addr=0x%llx,len=0x%lx) for ctx=%p\n",
  (unsigned long long)mm->key.phy_addr,
  (unsigned long)mm->key.len, uctx);

 return 0;
}
