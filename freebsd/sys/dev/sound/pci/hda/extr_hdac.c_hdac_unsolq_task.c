
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_softc {int dummy; } ;


 int hdac_lock (struct hdac_softc*) ;
 int hdac_unlock (struct hdac_softc*) ;
 int hdac_unsolq_flush (struct hdac_softc*) ;

__attribute__((used)) static void
hdac_unsolq_task(void *context, int pending)
{
 struct hdac_softc *sc;

 sc = (struct hdac_softc *)context;

 hdac_lock(sc);
 hdac_unsolq_flush(sc);
 hdac_unlock(sc);
}
