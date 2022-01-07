
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptnet_softc {int dummy; } ;
typedef int device_t ;


 struct ptnet_softc* device_get_softc (int ) ;
 int ptnet_device_shutdown (struct ptnet_softc*) ;

__attribute__((used)) static int
ptnet_shutdown(device_t dev)
{
 struct ptnet_softc *sc = device_get_softc(dev);

 ptnet_device_shutdown(sc);

 return (0);
}
