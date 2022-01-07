
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_info {scalar_t__ st; scalar_t__ sh; int * codec; } ;
typedef int device_t ;


 int atiixp_disable_interrupts (struct atiixp_info*) ;
 int atiixp_release_resource (struct atiixp_info*) ;
 struct atiixp_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
atiixp_pci_detach(device_t dev)
{
 int r;
 struct atiixp_info *sc;

 sc = pcm_getdevinfo(dev);
 if (sc != ((void*)0)) {
  if (sc->codec != ((void*)0)) {
   r = pcm_unregister(dev);
   if (r)
    return (r);
  }
  sc->codec = ((void*)0);
  if (sc->st != 0 && sc->sh != 0)
   atiixp_disable_interrupts(sc);
  atiixp_release_resource(sc);
 }
 return (0);
}
