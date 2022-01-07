
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wpi_softc {int nodesmsk; } ;


 int WPI_ID_UNDEFINED ;

__attribute__((used)) static __inline int
wpi_check_node_entry(struct wpi_softc *sc, uint8_t id)
{
 if (id == WPI_ID_UNDEFINED)
  return 0;

 return (sc->nodesmsk >> id) & 1;
}
