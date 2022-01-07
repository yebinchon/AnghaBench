
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
typedef int device_t ;


 int cxgb_free (struct adapter*) ;
 struct adapter* device_get_softc (int ) ;

__attribute__((used)) static int
cxgb_controller_detach(device_t dev)
{
 struct adapter *sc;

 sc = device_get_softc(dev);

 cxgb_free(sc);

 return (0);
}
