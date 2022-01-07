
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wpi_softc {int nodesmsk; } ;



__attribute__((used)) static __inline void
wpi_del_node_entry(struct wpi_softc *sc, uint8_t id)
{
 sc->nodesmsk &= ~(1 << id);
}
