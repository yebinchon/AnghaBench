
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ffec_softc {int dummy; } ;
typedef int boolean_t ;


 int FEC_IER_MII ;
 int FEC_IER_REG ;
 int RD4 (struct ffec_softc*,int ) ;

__attribute__((used)) static boolean_t
ffec_miibus_iowait(struct ffec_softc *sc)
{
 uint32_t timeout;

 for (timeout = 10000; timeout != 0; --timeout)
  if (RD4(sc, FEC_IER_REG) & FEC_IER_MII)
   return (1);

 return (0);
}
