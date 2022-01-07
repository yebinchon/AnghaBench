
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct run_softc {int dummy; } ;


 int run_write_2 (struct run_softc*,scalar_t__,int) ;

__attribute__((used)) static int
run_write(struct run_softc *sc, uint16_t reg, uint32_t val)
{
 int error;

 if ((error = run_write_2(sc, reg, val & 0xffff)) == 0)
  error = run_write_2(sc, reg + 2, val >> 16);
 return (error);
}
