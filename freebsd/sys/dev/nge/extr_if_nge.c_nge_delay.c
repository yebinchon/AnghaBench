
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nge_softc {int dummy; } ;


 int CSR_READ_4 (struct nge_softc*,int ) ;
 int NGE_CSR ;

__attribute__((used)) static void
nge_delay(struct nge_softc *sc)
{
 int idx;

 for (idx = (300 / 33) + 1; idx > 0; idx--)
  CSR_READ_4(sc, NGE_CSR);
}
