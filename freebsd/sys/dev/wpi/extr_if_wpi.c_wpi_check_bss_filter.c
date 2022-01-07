
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filter; } ;
struct wpi_softc {TYPE_1__ rxon; } ;


 int WPI_FILTER_BSS ;
 int htole32 (int ) ;

__attribute__((used)) static __inline int
wpi_check_bss_filter(struct wpi_softc *sc)
{
 return (sc->rxon.filter & htole32(WPI_FILTER_BSS)) != 0;
}
