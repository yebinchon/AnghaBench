
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bus_dma_tag_t ;


 int bus_get_dma_tag (int ) ;

bus_dma_tag_t
ntb_get_dma_tag(device_t bus, device_t child)
{

 return (bus_get_dma_tag(bus));
}
