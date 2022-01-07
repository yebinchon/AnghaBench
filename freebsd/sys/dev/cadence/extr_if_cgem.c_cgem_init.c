
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgem_softc {int dummy; } ;


 int CGEM_LOCK (struct cgem_softc*) ;
 int CGEM_UNLOCK (struct cgem_softc*) ;
 int cgem_init_locked (struct cgem_softc*) ;

__attribute__((used)) static void
cgem_init(void *arg)
{
 struct cgem_softc *sc = (struct cgem_softc *)arg;

 CGEM_LOCK(sc);
 cgem_init_locked(sc);
 CGEM_UNLOCK(sc);
}
