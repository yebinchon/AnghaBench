
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int dummy; } ;


 int iwi_init (struct iwi_softc*) ;

__attribute__((used)) static void
iwi_restart(void *arg, int npending)
{
 struct iwi_softc *sc = arg;

 iwi_init(sc);
}
