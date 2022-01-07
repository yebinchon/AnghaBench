
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct event_ring_data {int dummy; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ CSTORM_EVENT_RING_DATA_OFFSET (int ) ;
 int ecore_storm_memset_struct (struct bxe_softc*,scalar_t__,size_t,scalar_t__*) ;

__attribute__((used)) static void
storm_memset_eq_data(struct bxe_softc *sc,
                     struct event_ring_data *eq_data,
                     uint16_t pfid)
{
    uint32_t addr;
    size_t size;

    addr = (BAR_CSTRORM_INTMEM + CSTORM_EVENT_RING_DATA_OFFSET(pfid));
    size = sizeof(struct event_ring_data);
    ecore_storm_memset_struct(sc, addr, size, (uint32_t *)eq_data);
}
