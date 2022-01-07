
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rl_softc {int rl_inttask; } ;


 int CSR_READ_2 (struct rl_softc*,int ) ;
 int CSR_WRITE_2 (struct rl_softc*,int ,int ) ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int RL_IMR ;
 int RL_INTRS_CPLUS ;
 int RL_ISR ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_fast ;

__attribute__((used)) static int
re_intr(void *arg)
{
 struct rl_softc *sc;
 uint16_t status;

 sc = arg;

 status = CSR_READ_2(sc, RL_ISR);
 if (status == 0xFFFF || (status & RL_INTRS_CPLUS) == 0)
                return (FILTER_STRAY);
 CSR_WRITE_2(sc, RL_IMR, 0);

 taskqueue_enqueue(taskqueue_fast, &sc->rl_inttask);

 return (FILTER_HANDLED);
}
