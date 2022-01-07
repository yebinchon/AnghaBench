
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbc_softc {int child_pcm; int child_midi1; int child_midi2; } ;
typedef int device_t ;


 int bus_generic_detach (int ) ;
 int device_delete_child (int ,int ) ;
 struct sbc_softc* device_get_softc (int ) ;
 int release_resource (struct sbc_softc*) ;
 int sbc_lock (struct sbc_softc*) ;
 int sbc_lockdestroy (struct sbc_softc*) ;

__attribute__((used)) static int
sbc_detach(device_t dev)
{
 struct sbc_softc *scp = device_get_softc(dev);

 sbc_lock(scp);
 device_delete_child(dev, scp->child_midi2);
 device_delete_child(dev, scp->child_midi1);
 device_delete_child(dev, scp->child_pcm);
 release_resource(scp);
 sbc_lockdestroy(scp);
 return bus_generic_detach(dev);
}
