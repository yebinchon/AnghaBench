
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct opalpci_softc {int phb_id; } ;
typedef int device_t ;


 int OPAL_PCI_MSI_EOI ;
 int PIC_EOI (int ,int ,void*) ;
 struct opalpci_softc* device_get_softc (int ) ;
 int opal_call (int ,int ,int ) ;
 int root_pic ;

__attribute__((used)) static void opalpic_pic_eoi(device_t dev, u_int irq, void *priv)
{
 struct opalpci_softc *sc;

 sc = device_get_softc(dev);
 opal_call(OPAL_PCI_MSI_EOI, sc->phb_id, irq);

 PIC_EOI(root_pic, irq, priv);
}
