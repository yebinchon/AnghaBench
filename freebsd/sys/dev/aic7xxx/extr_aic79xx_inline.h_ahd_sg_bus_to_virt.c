
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
typedef int uint32_t ;
struct scb {int sg_list_busaddr; scalar_t__ sg_list; } ;
struct ahd_softc {int dummy; } ;
typedef int bus_addr_t ;


 int ahd_sg_size (struct ahd_softc*) ;

__attribute__((used)) static __inline void *
ahd_sg_bus_to_virt(struct ahd_softc *ahd, struct scb *scb, uint32_t sg_busaddr)
{
 bus_addr_t sg_offset;


 sg_offset = sg_busaddr - (scb->sg_list_busaddr - ahd_sg_size(ahd));
 return ((uint8_t *)scb->sg_list + sg_offset);
}
