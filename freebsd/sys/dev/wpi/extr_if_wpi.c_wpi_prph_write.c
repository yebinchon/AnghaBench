
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wpi_softc {int dummy; } ;


 int WPI_BARRIER_WRITE (struct wpi_softc*) ;
 int WPI_PRPH_DWORD ;
 int WPI_PRPH_WADDR ;
 int WPI_PRPH_WDATA ;
 int WPI_WRITE (struct wpi_softc*,int ,int) ;

__attribute__((used)) static __inline void
wpi_prph_write(struct wpi_softc *sc, uint32_t addr, uint32_t data)
{
 WPI_WRITE(sc, WPI_PRPH_WADDR, WPI_PRPH_DWORD | addr);
 WPI_BARRIER_WRITE(sc);
 WPI_WRITE(sc, WPI_PRPH_WDATA, data);
}
