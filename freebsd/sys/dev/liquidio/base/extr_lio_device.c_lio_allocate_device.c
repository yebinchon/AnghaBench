
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct octeon_device {size_t octeon_id; int device_name; int mem_access_lock; int pci_win_lock; } ;
typedef int device_t ;


 char* LIO_DRV_NAME ;
 size_t LIO_MAX_DEVICES ;
 int MTX_DEF ;
 struct octeon_device* lio_allocate_device_mem (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct octeon_device** octeon_device ;
 int octeon_device_count ;
 int octeon_devices_lock ;
 int snprintf (int ,int,char*,char*,size_t) ;

struct octeon_device *
lio_allocate_device(device_t device)
{
 struct octeon_device *oct = ((void*)0);
 uint32_t oct_idx = 0;

 mtx_lock(&octeon_devices_lock);

 for (oct_idx = 0; oct_idx < LIO_MAX_DEVICES; oct_idx++)
  if (!octeon_device[oct_idx])
   break;

 if (oct_idx < LIO_MAX_DEVICES) {
  oct = lio_allocate_device_mem(device);
  if (oct != ((void*)0)) {
   octeon_device_count++;
   octeon_device[oct_idx] = oct;
  }
 }

 mtx_unlock(&octeon_devices_lock);

 if (oct == ((void*)0))
  return (((void*)0));

 mtx_init(&oct->pci_win_lock, "pci_win_lock", ((void*)0), MTX_DEF);
 mtx_init(&oct->mem_access_lock, "mem_access_lock", ((void*)0), MTX_DEF);

 oct->octeon_id = oct_idx;
 snprintf(oct->device_name, sizeof(oct->device_name), "%s%d",
   LIO_DRV_NAME, oct->octeon_id);

 return (oct);
}
