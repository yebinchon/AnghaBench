
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_ooffset_t ;
typedef int vm_memattr_t ;
typedef int video_adapter_t ;
struct TYPE_2__ {int (* mmap ) (int *,int ,int *,int,int *) ;} ;


 TYPE_1__* prevvidsw ;
 int stub1 (int *,int ,int *,int,int *) ;

__attribute__((used)) static int
s3lfb_mmap(video_adapter_t *adp, vm_ooffset_t offset, vm_paddr_t *paddr,
   int prot, vm_memattr_t *memattr)
{
 return (*prevvidsw->mmap)(adp, offset, paddr, prot, memattr);
}
