
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wpi_softc {int nodesmsk; } ;


 int WPI_ID_BSS ;

__attribute__((used)) static __inline uint8_t
wpi_add_node_entry_sta(struct wpi_softc *sc)
{
 sc->nodesmsk |= 1 << WPI_ID_BSS;

 return WPI_ID_BSS;
}
