
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_softc {int dummy; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;


 int bus_dmamap_destroy (int ,int ) ;
 int ioat_log_message (int ,char*,char const*,int) ;

__attribute__((used)) static inline int
ioat_bus_dmamap_destroy(struct ioat_softc *ioat, const char *func,
    bus_dma_tag_t dmat, bus_dmamap_t map)
{
 int error;

 error = bus_dmamap_destroy(dmat, map);
 if (error != 0) {
  ioat_log_message(0,
      "%s: bus_dmamap_destroy failed %d\n", func, error);
 }

 return (error);
}
