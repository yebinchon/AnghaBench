
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int ciss_dev; int ciss_notify_thread; } ;


 scalar_t__ ciss_notify_thread ;
 int device_get_unit (int ) ;
 scalar_t__ kproc_create (void (*) (void*),struct ciss_softc*,int *,int ,int ,char*,int ) ;
 int panic (char*) ;

__attribute__((used)) static void
ciss_spawn_notify_thread(struct ciss_softc *sc)
{

    if (kproc_create((void(*)(void *))ciss_notify_thread, sc,
         &sc->ciss_notify_thread, 0, 0, "ciss_notify%d",
         device_get_unit(sc->ciss_dev)))
 panic("Could not create notify thread\n");
}
