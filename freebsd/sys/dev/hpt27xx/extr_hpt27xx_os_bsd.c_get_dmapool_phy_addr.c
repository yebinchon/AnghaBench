
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUS_ADDRESS ;


 int vtophys (void*) ;

BUS_ADDRESS get_dmapool_phy_addr(void *osext, void * dmapool_virt_addr)
{
 return (BUS_ADDRESS)vtophys(dmapool_virt_addr);
}
