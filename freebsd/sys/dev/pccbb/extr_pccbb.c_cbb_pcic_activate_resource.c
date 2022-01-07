
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct cbb_softc {int * exca; } ;
typedef int device_t ;


 int cbb_activate_window (int ,int) ;
 struct cbb_softc* device_get_softc (int ) ;
 int exca_activate_resource (int *,int ,int,int,struct resource*) ;

__attribute__((used)) static int
cbb_pcic_activate_resource(device_t brdev, device_t child, int type, int rid,
    struct resource *res)
{
 struct cbb_softc *sc = device_get_softc(brdev);
 int error;

 error = exca_activate_resource(&sc->exca[0], child, type, rid, res);
 if (error == 0)
  cbb_activate_window(brdev, type);
 return (error);
}
