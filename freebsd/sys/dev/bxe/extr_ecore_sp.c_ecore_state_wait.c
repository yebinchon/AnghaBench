
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {scalar_t__ panic; } ;


 scalar_t__ CHIP_REV_IS_EMUL (struct bxe_softc*) ;
 int ECORE_ERR (char*,int) ;
 int ECORE_IO ;
 int ECORE_MIGHT_SLEEP () ;
 int ECORE_MSG (struct bxe_softc*,char*,int) ;
 int ECORE_SUCCESS ;
 int ECORE_TEST_BIT (int,unsigned long*) ;
 int ECORE_TIMEOUT ;
 int ECORE_WAIT (struct bxe_softc*,int ) ;
 int delay_us ;
 int ecore_panic () ;

__attribute__((used)) static inline int ecore_state_wait(struct bxe_softc *sc, int state,
       unsigned long *pstate)
{

 int cnt = 5000;


 if (CHIP_REV_IS_EMUL(sc))
  cnt *= 20;

 ECORE_MSG(sc, "waiting for state to become %d\n", state);

 ECORE_MIGHT_SLEEP();
 while (cnt--) {
  if (!ECORE_TEST_BIT(state, pstate)) {



   return ECORE_SUCCESS;
  }

  ECORE_WAIT(sc, delay_us);

  if (sc->panic)
   return ECORE_IO;
 }


 ECORE_ERR("timeout waiting for state %d\n", state);




 return ECORE_TIMEOUT;
}
