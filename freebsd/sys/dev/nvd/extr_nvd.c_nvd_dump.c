
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct nvd_disk {int ns; } ;
struct disk {struct nvd_disk* d_drv1; } ;
typedef int off_t ;


 int nvme_ns_dump (int ,void*,int ,size_t) ;

__attribute__((used)) static int
nvd_dump(void *arg, void *virt, vm_offset_t phys, off_t offset, size_t len)
{
 struct disk *dp = arg;
 struct nvd_disk *ndisk = dp->d_drv1;

 return (nvme_ns_dump(ndisk->ns, virt, offset, len));
}
