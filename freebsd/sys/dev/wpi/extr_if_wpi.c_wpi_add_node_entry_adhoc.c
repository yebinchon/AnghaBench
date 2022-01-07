
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wpi_softc {int nodesmsk; } ;


 int WPI_ID_IBSS_MAX ;
 int WPI_ID_IBSS_MIN ;
 int WPI_ID_UNDEFINED ;

__attribute__((used)) static __inline uint8_t
wpi_add_node_entry_adhoc(struct wpi_softc *sc)
{
 uint8_t newid = WPI_ID_IBSS_MIN;

 for (; newid <= WPI_ID_IBSS_MAX; newid++) {
  if ((sc->nodesmsk & (1 << newid)) == 0) {
   sc->nodesmsk |= 1 << newid;
   return newid;
  }
 }

 return WPI_ID_UNDEFINED;
}
