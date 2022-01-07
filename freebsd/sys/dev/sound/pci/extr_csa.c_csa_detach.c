
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sndcard_func {int dummy; } ;
typedef TYPE_1__* sc_p ;
typedef int device_t ;
struct TYPE_5__ {int io; int io_rid; int mem; int mem_rid; int irq; int irq_rid; } ;
typedef TYPE_2__ csa_res ;
struct TYPE_4__ {int ih; int * pcm; int * midi; TYPE_2__ res; } ;


 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int device_delete_child (int ,int *) ;
 struct sndcard_func* device_get_ivars (int *) ;
 TYPE_1__* device_get_softc (int ) ;
 int free (struct sndcard_func*,int ) ;

__attribute__((used)) static int
csa_detach(device_t dev)
{
 csa_res *resp;
 sc_p scp;
 struct sndcard_func *func;
 int err;

 scp = device_get_softc(dev);
 resp = &scp->res;

 if (scp->midi != ((void*)0)) {
  func = device_get_ivars(scp->midi);
  err = device_delete_child(dev, scp->midi);
  if (err != 0)
   return err;
  if (func != ((void*)0))
   free(func, M_DEVBUF);
  scp->midi = ((void*)0);
 }

 if (scp->pcm != ((void*)0)) {
  func = device_get_ivars(scp->pcm);
  err = device_delete_child(dev, scp->pcm);
  if (err != 0)
   return err;
  if (func != ((void*)0))
   free(func, M_DEVBUF);
  scp->pcm = ((void*)0);
 }

 bus_teardown_intr(dev, resp->irq, scp->ih);
 bus_release_resource(dev, SYS_RES_IRQ, resp->irq_rid, resp->irq);
 bus_release_resource(dev, SYS_RES_MEMORY, resp->mem_rid, resp->mem);
 bus_release_resource(dev, SYS_RES_MEMORY, resp->io_rid, resp->io);

 return bus_generic_detach(dev);
}
