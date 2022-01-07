
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wpi_softc {int dummy; } ;


 int WPI_BARRIER_READ_WRITE (struct wpi_softc*) ;
 int WPI_MEM_RADDR ;
 int WPI_MEM_RDATA ;
 int WPI_READ (struct wpi_softc*,int ) ;
 int WPI_WRITE (struct wpi_softc*,int ,int ) ;

__attribute__((used)) static __inline uint32_t
wpi_mem_read(struct wpi_softc *sc, uint32_t addr)
{
 WPI_WRITE(sc, WPI_MEM_RADDR, addr);
 WPI_BARRIER_READ_WRITE(sc);
 return WPI_READ(sc, WPI_MEM_RDATA);
}
