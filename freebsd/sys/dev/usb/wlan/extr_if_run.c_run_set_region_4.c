
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct run_softc {int dummy; } ;


 int KASSERT (int,char*) ;
 int run_write (struct run_softc*,scalar_t__,int ) ;

__attribute__((used)) static int
run_set_region_4(struct run_softc *sc, uint16_t reg, uint32_t val, int len)
{
 int i, error = 0;

 KASSERT((len & 3) == 0, ("run_set_region_4: Invalid data length.\n"));
 for (i = 0; i < len && error == 0; i += 4)
  error = run_write(sc, reg + i, val);
 return (error);
}
