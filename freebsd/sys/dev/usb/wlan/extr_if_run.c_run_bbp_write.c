
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct run_softc {int dummy; } ;


 int ETIMEDOUT ;
 int RT2860_BBP_CSR_CFG ;
 int RT2860_BBP_CSR_KICK ;
 int run_read (struct run_softc*,int ,int*) ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static int
run_bbp_write(struct run_softc *sc, uint8_t reg, uint8_t val)
{
 uint32_t tmp;
 int ntries, error;

 for (ntries = 0; ntries < 10; ntries++) {
  if ((error = run_read(sc, RT2860_BBP_CSR_CFG, &tmp)) != 0)
   return (error);
  if (!(tmp & RT2860_BBP_CSR_KICK))
   break;
 }
 if (ntries == 10)
  return (ETIMEDOUT);

 tmp = RT2860_BBP_CSR_KICK | reg << 8 | val;
 return (run_write(sc, RT2860_BBP_CSR_CFG, tmp));
}
