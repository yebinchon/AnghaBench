
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int pci_win_wr_data_lo; int pci_win_wr_data_hi; int pci_win_wr_addr; } ;
struct octeon_device {int pci_win_lock; TYPE_1__ reg_list; } ;


 int lio_read_csr32 (struct octeon_device*,int ) ;
 int lio_write_csr32 (struct octeon_device*,int ,int) ;
 int lio_write_csr64 (struct octeon_device*,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
lio_pci_writeq(struct octeon_device *oct, uint64_t val, uint64_t addr)
{
 volatile uint32_t val32;

 mtx_lock(&oct->pci_win_lock);

 lio_write_csr64(oct, oct->reg_list.pci_win_wr_addr, addr);


 lio_write_csr32(oct, oct->reg_list.pci_win_wr_data_hi, val >> 32);

 val32 = lio_read_csr32(oct, oct->reg_list.pci_win_wr_data_hi);

 lio_write_csr32(oct, oct->reg_list.pci_win_wr_data_lo,
   val & 0xffffffff);

 mtx_unlock(&oct->pci_win_lock);
}
