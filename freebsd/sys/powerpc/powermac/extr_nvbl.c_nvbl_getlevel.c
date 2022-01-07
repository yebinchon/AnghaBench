
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct nvbl_softc {int sc_memr; } ;


 int NVIDIA_BRIGHT_MIN ;
 int NVIDIA_BRIGHT_SCALE ;
 int NVIDIA_PMC_OFF ;
 int bus_read_stream_2 (int ,int ) ;

__attribute__((used)) static int
nvbl_getlevel(struct nvbl_softc *sc)
{
 uint16_t level;

 level = bus_read_stream_2(sc->sc_memr, NVIDIA_PMC_OFF) & 0x7fff;

 if (level < NVIDIA_BRIGHT_MIN)
  return 0;

 level = (level - NVIDIA_BRIGHT_MIN) / NVIDIA_BRIGHT_SCALE;

 return (level);
}
