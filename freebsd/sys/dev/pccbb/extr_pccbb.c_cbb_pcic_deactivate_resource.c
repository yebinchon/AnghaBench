
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct cbb_softc {int * exca; } ;
typedef int device_t ;


 struct cbb_softc* device_get_softc (int ) ;
 int exca_deactivate_resource (int *,int ,int,int,struct resource*) ;

__attribute__((used)) static int
cbb_pcic_deactivate_resource(device_t brdev, device_t child, int type,
    int rid, struct resource *res)
{
 struct cbb_softc *sc = device_get_softc(brdev);
 return (exca_deactivate_resource(&sc->exca[0], child, type, rid, res));
}
