
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_softc {int dummy; } ;
typedef int device_t ;


 struct ipw_softc* device_get_softc (int ) ;
 int ipw_stop (struct ipw_softc*) ;

__attribute__((used)) static int
ipw_shutdown(device_t dev)
{
 struct ipw_softc *sc = device_get_softc(dev);

 ipw_stop(sc);

 return 0;
}
