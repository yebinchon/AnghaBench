
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct octeon_device {int dummy; } ;


 int MEMOPS_IDX ;
 int lio_read_bar1_mem64 (struct octeon_device*,int) ;
 void* lio_read_bar1_mem8 (struct octeon_device*,int ) ;
 int lio_toggle_bar1_swapmode (struct octeon_device*,int ) ;

__attribute__((used)) static void
lio_pci_fastread(struct octeon_device *oct, uint32_t offset,
   uint8_t *hostbuf, uint32_t len)
{

 while ((len) && ((unsigned long)offset) & 7) {
  *(hostbuf++) = lio_read_bar1_mem8(oct, offset++);
  len--;
 }

 lio_toggle_bar1_swapmode(oct, MEMOPS_IDX);

 while (len >= 8) {
  *((uint64_t *)hostbuf) = lio_read_bar1_mem64(oct, offset);
  offset += 8;
  hostbuf += 8;
  len -= 8;
 }

 lio_toggle_bar1_swapmode(oct, MEMOPS_IDX);

 while (len--)
  *(hostbuf++) = lio_read_bar1_mem8(oct, offset++);
}
