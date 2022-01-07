
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {int * exca; } ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int cbb_do_power (int ) ;
 struct cbb_softc* device_get_softc (int ) ;
 int exca_reset (int *,int ) ;

__attribute__((used)) static int
cbb_pcic_power_enable_socket(device_t brdev, device_t child)
{
 struct cbb_softc *sc = device_get_softc(brdev);
 int err;

 DPRINTF(("cbb_pcic_socket_enable:\n"));


 err = cbb_do_power(brdev);
 if (err)
  return (err);
 exca_reset(&sc->exca[0], child);

 return (0);
}
