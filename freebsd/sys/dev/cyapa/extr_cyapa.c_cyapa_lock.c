
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa_softc {int mutex; } ;


 int mtx_lock (int *) ;

__attribute__((used)) static void
cyapa_lock(struct cyapa_softc *sc)
{

 mtx_lock(&sc->mutex);
}
