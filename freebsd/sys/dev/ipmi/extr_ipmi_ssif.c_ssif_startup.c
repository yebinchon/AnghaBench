
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int ipmi_dev; int ipmi_kthread; } ;


 int device_get_nameunit (int ) ;
 int kproc_create (int ,struct ipmi_softc*,int *,int ,int ,char*,int ) ;
 int ssif_loop ;

__attribute__((used)) static int
ssif_startup(struct ipmi_softc *sc)
{

 return (kproc_create(ssif_loop, sc, &sc->ipmi_kthread, 0, 0,
     "%s: ssif", device_get_nameunit(sc->ipmi_dev)));
}
