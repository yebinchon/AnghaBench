
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int device_t ;
typedef int csa_res ;
struct TYPE_4__ {int res; } ;


 int ENXIO ;
 int bus_generic_resume (int ) ;
 scalar_t__ csa_downloadimage (int *) ;
 scalar_t__ csa_initialize (TYPE_1__*) ;
 int csa_resetdsp (int *) ;
 TYPE_1__* device_get_softc (int ) ;

__attribute__((used)) static int
csa_resume(device_t dev)
{
 csa_res *resp;
 sc_p scp;

 scp = device_get_softc(dev);
 resp = &scp->res;


 if (csa_initialize(scp))
  return (ENXIO);


 csa_resetdsp(resp);


 if (csa_downloadimage(resp))
  return (ENXIO);

 return (bus_generic_resume(dev));
}
