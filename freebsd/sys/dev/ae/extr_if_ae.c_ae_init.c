
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ae_softc_t ;


 int AE_LOCK (int *) ;
 int AE_UNLOCK (int *) ;
 int ae_init_locked (int *) ;

__attribute__((used)) static void
ae_init(void *arg)
{
 ae_softc_t *sc;

 sc = (ae_softc_t *)arg;
 AE_LOCK(sc);
 ae_init_locked(sc);
 AE_UNLOCK(sc);
}
