
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct mbuf {int m_data; } ;
typedef int device_t ;


 scalar_t__ vtophys (int ) ;

__attribute__((used)) static inline uint64_t
lio_map_ring(device_t dev, void *buf, uint32_t size)
{
 vm_paddr_t dma_addr;

 dma_addr = vtophys(((struct mbuf *)buf)->m_data);
 return ((uint64_t)dma_addr);
}
