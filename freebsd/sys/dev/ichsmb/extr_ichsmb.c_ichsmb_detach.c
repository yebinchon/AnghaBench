
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int device_t ;
struct TYPE_4__ {int mutex; int smb; } ;


 int bus_generic_detach (int ) ;
 int device_delete_child (int ,int ) ;
 TYPE_1__* device_get_softc (int ) ;
 int ichsmb_release_resources (TYPE_1__* const) ;
 int mtx_destroy (int *) ;

int
ichsmb_detach(device_t dev)
{
 const sc_p sc = device_get_softc(dev);
 int error;

 error = bus_generic_detach(dev);
 if (error)
  return (error);
 device_delete_child(dev, sc->smb);
 ichsmb_release_resources(sc);
 mtx_destroy(&sc->mutex);

 return 0;
}
