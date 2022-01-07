
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_softc {int chipc_dev; } ;


 int BHND_CHIPC_READ_CHIPST (int ) ;

__attribute__((used)) static uint32_t
bhnd_pmu_read_chipst(void *ctx)
{
 struct bhnd_pmu_softc *sc = ctx;
 return (BHND_CHIPC_READ_CHIPST(sc->chipc_dev));
}
