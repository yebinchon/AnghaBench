
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int flags; } ;
struct ahd_dma_seg {int dummy; } ;
struct ahd_dma64_seg {int dummy; } ;
typedef int bus_size_t ;


 int AHD_64BIT_ADDRESSING ;
 int AHD_NSEG ;

__attribute__((used)) static u_int
ahd_sglist_size(struct ahd_softc *ahd)
{
 bus_size_t list_size;

 list_size = sizeof(struct ahd_dma_seg) * AHD_NSEG;
 if ((ahd->flags & AHD_64BIT_ADDRESSING) != 0)
  list_size = sizeof(struct ahd_dma64_seg) * AHD_NSEG;
 return (list_size);
}
