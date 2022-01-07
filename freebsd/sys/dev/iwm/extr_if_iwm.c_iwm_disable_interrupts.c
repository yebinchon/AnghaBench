
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int dummy; } ;


 int IWM_CSR_FH_INT_STATUS ;
 int IWM_CSR_INT ;
 int IWM_CSR_INT_MASK ;
 int IWM_WRITE (struct iwm_softc*,int ,int ) ;

__attribute__((used)) static void
iwm_disable_interrupts(struct iwm_softc *sc)
{

 IWM_WRITE(sc, IWM_CSR_INT_MASK, 0);


 IWM_WRITE(sc, IWM_CSR_INT, ~0);
 IWM_WRITE(sc, IWM_CSR_FH_INT_STATUS, ~0);
}
