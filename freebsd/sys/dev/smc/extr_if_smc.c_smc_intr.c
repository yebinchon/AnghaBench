
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smc_softc {int smc_intr; int smc_tq; } ;


 int BSR ;
 int BSR_BANK_MASK ;
 int FILTER_HANDLED ;
 int MSK ;
 int smc_read_2 (struct smc_softc*,int ) ;
 int smc_select_bank (struct smc_softc*,int) ;
 int smc_write_1 (struct smc_softc*,int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
smc_intr(void *context)
{
 struct smc_softc *sc;
 uint32_t curbank;

 sc = (struct smc_softc *)context;




 curbank = (smc_read_2(sc, BSR) & BSR_BANK_MASK);




 smc_select_bank(sc, 2);
 smc_write_1(sc, MSK, 0);


 smc_select_bank(sc, curbank);

 taskqueue_enqueue(sc->smc_tq, &sc->smc_intr);
 return (FILTER_HANDLED);
}
