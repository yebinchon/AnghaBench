
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int (* bar1_idx_read ) (struct octeon_device*,int) ;int (* bar1_idx_write ) (struct octeon_device*,int,int) ;int (* bar1_idx_setup ) (struct octeon_device*,int,int,int) ;} ;
struct TYPE_3__ {int dram_region_base; int bar1_index; } ;
struct octeon_device {int mem_access_lock; TYPE_2__ fn_list; TYPE_1__ console_nb_info; } ;


 int MEMOPS_IDX ;
 int lio_pci_fastread (struct octeon_device*,int,int *,int) ;
 int lio_pci_fastwrite (struct octeon_device*,int,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct octeon_device*,int) ;
 int stub2 (struct octeon_device*,int,int,int) ;
 int stub3 (struct octeon_device*,int,int) ;

__attribute__((used)) static void
lio_pci_rw_core_mem(struct octeon_device *oct, uint64_t addr,
      uint8_t *hostbuf, uint32_t len, uint32_t op)
{
 uint64_t static_mapping_base;
 uint32_t copy_len = 0, index_reg_val = 0;
 uint32_t offset;

 static_mapping_base = oct->console_nb_info.dram_region_base;

 if (static_mapping_base && static_mapping_base ==
     (addr & 0xFFFFFFFFFFC00000ULL)) {
  int bar1_index = oct->console_nb_info.bar1_index;

  offset = (bar1_index << 22) + (addr & 0x3fffff);

  if (op)
   lio_pci_fastread(oct, offset, hostbuf, len);
  else
   lio_pci_fastwrite(oct, offset, hostbuf, len);

  return;
 }
 mtx_lock(&oct->mem_access_lock);


 index_reg_val = oct->fn_list.bar1_idx_read(oct, MEMOPS_IDX);
 do {
  oct->fn_list.bar1_idx_setup(oct, addr, MEMOPS_IDX, 1);
  offset = (MEMOPS_IDX << 22) + (addr & 0x3fffff);





  if (((addr + len - 1) & ~(0x3fffff)) != (addr & ~(0x3fffff))) {
   copy_len = (uint32_t)(((addr & ~(0x3fffff)) +
            (MEMOPS_IDX << 22)) - addr);
  } else {
   copy_len = len;
  }

  if (op) {
   lio_pci_fastread(oct, offset, hostbuf,
      copy_len);
  } else {
   lio_pci_fastwrite(oct, offset, hostbuf,
       copy_len);
  }

  len -= copy_len;
  addr += copy_len;
  hostbuf += copy_len;

 } while (len);

 oct->fn_list.bar1_idx_write(oct, MEMOPS_IDX, index_reg_val);

 mtx_unlock(&oct->mem_access_lock);
}
