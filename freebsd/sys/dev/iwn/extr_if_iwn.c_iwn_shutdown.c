
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int dummy; } ;
typedef int device_t ;


 struct iwn_softc* device_get_softc (int ) ;
 int iwn_stop (struct iwn_softc*) ;

__attribute__((used)) static int
iwn_shutdown(device_t dev)
{
 struct iwn_softc *sc = device_get_softc(dev);

 iwn_stop(sc);
 return 0;
}
