
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ioat_softc {int ring_size_order; struct ioat_descriptor* ring; } ;
struct ioat_descriptor {int dummy; } ;



__attribute__((used)) static struct ioat_descriptor *
ioat_get_ring_entry(struct ioat_softc *ioat, uint32_t index)
{

 return (&ioat->ring[index % (1 << ioat->ring_size_order)]);
}
