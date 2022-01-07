
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {int dummy; } ;


 int vtmmio_free_interrupts (struct vtmmio_softc*) ;
 int vtmmio_free_virtqueues (struct vtmmio_softc*) ;

__attribute__((used)) static void
vtmmio_release_child_resources(struct vtmmio_softc *sc)
{

 vtmmio_free_interrupts(sc);
 vtmmio_free_virtqueues(sc);
}
