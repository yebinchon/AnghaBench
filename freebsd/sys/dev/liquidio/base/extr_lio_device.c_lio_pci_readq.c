
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int pci_win_rd_data; int pci_win_rd_addr_lo; int pci_win_rd_addr_hi; } ;
struct octeon_device {scalar_t__ chip_id; int pci_win_lock; TYPE_1__ reg_list; } ;


 scalar_t__ LIO_CN23XX_PF_VID ;
 int lio_read_csr32 (struct octeon_device*,int ) ;
 int lio_read_csr64 (struct octeon_device*,int ) ;
 int lio_write_csr32 (struct octeon_device*,int ,int volatile) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

uint64_t
lio_pci_readq(struct octeon_device *oct, uint64_t addr)
{
 uint64_t val64;
 volatile uint32_t val32, addrhi;

 mtx_lock(&oct->pci_win_lock);





 addrhi = (addr >> 32);
 if (oct->chip_id == LIO_CN23XX_PF_VID)
  addrhi |= 0x00060000;
 lio_write_csr32(oct, oct->reg_list.pci_win_rd_addr_hi, addrhi);


 val32 = lio_read_csr32(oct, oct->reg_list.pci_win_rd_addr_hi);

 lio_write_csr32(oct, oct->reg_list.pci_win_rd_addr_lo,
   addr & 0xffffffff);
 val32 = lio_read_csr32(oct, oct->reg_list.pci_win_rd_addr_lo);

 val64 = lio_read_csr64(oct, oct->reg_list.pci_win_rd_data);

 mtx_unlock(&oct->pci_win_lock);

 return (val64);
}
