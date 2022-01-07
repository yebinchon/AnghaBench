
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct com_s {struct com_s* ibuf; scalar_t__ ioportres; int ioportrid; scalar_t__ irqres; int cookie; scalar_t__ tp; int gone; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int TRUE ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_softc (int ,int *) ;
 int free (struct com_s*,int ) ;
 int ttyfree (scalar_t__) ;

int
siodetach(device_t dev)
{
 struct com_s *com;

 com = (struct com_s *) device_get_softc(dev);
 if (com == ((void*)0)) {
  device_printf(dev, "NULL com in siounload\n");
  return (0);
 }
 com->gone = TRUE;
 if (com->tp)
  ttyfree(com->tp);
 if (com->irqres) {
  bus_teardown_intr(dev, com->irqres, com->cookie);
  bus_release_resource(dev, SYS_RES_IRQ, 0, com->irqres);
 }
 if (com->ioportres)
  bus_release_resource(dev, SYS_RES_IOPORT, com->ioportrid,
         com->ioportres);
 if (com->ibuf != ((void*)0))
  free(com->ibuf, M_DEVBUF);

 device_set_softc(dev, ((void*)0));
 free(com, M_DEVBUF);
 return (0);
}
