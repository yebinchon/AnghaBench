
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wpi_softc {int dummy; } ;


 int WPI_BARRIER_READ_WRITE (struct wpi_softc*) ;
 int WPI_PRPH_DWORD ;
 int WPI_PRPH_RADDR ;
 int WPI_PRPH_RDATA ;
 int WPI_READ (struct wpi_softc*,int ) ;
 int WPI_WRITE (struct wpi_softc*,int ,int) ;

__attribute__((used)) static __inline uint32_t
wpi_prph_read(struct wpi_softc *sc, uint32_t addr)
{
 WPI_WRITE(sc, WPI_PRPH_RADDR, WPI_PRPH_DWORD | addr);
 WPI_BARRIER_READ_WRITE(sc);
 return WPI_READ(sc, WPI_PRPH_RDATA);
}
