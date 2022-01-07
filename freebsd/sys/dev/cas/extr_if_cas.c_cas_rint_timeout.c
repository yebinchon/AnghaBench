
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas_softc {int dummy; } ;


 int CAS_LOCK_ASSERT (struct cas_softc*,int ) ;
 int MA_OWNED ;
 int cas_rint (struct cas_softc*) ;

__attribute__((used)) static void
cas_rint_timeout(void *arg)
{
 struct cas_softc *sc = arg;

 CAS_LOCK_ASSERT(sc, MA_OWNED);

 cas_rint(sc);
}
