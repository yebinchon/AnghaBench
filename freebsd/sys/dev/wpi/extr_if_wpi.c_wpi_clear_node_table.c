
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {scalar_t__ nodesmsk; } ;



__attribute__((used)) static __inline void
wpi_clear_node_table(struct wpi_softc *sc)
{
 sc->nodesmsk = 0;
}
