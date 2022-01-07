
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ioat_softc {int dummy; } ;
struct ioat_descriptor {int dummy; } ;


 int M_IOAT ;
 int free_domain (struct ioat_descriptor*,int ) ;

__attribute__((used)) static void
ioat_free_ring(struct ioat_softc *ioat, uint32_t size,
    struct ioat_descriptor *ring)
{

 free_domain(ring, M_IOAT);
}
