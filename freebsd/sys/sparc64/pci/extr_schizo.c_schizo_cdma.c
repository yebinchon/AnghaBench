
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct schizo_softc {int sc_cdma_state; } ;


 int FILTER_HANDLED ;
 int SCHIZO_CDMA_STATE_PENDING ;
 int SCHIZO_CDMA_STATE_RECEIVED ;
 int atomic_cmpset_32 (int *,int ,int ) ;

__attribute__((used)) static int
schizo_cdma(void *arg)
{
 struct schizo_softc *sc = arg;

 atomic_cmpset_32(&sc->sc_cdma_state, SCHIZO_CDMA_STATE_PENDING,
     SCHIZO_CDMA_STATE_RECEIVED);
 return (FILTER_HANDLED);
}
