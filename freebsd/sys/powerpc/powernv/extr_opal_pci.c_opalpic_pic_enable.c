
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct opalpci_softc {int phb_id; } ;
typedef int device_t ;


 int OPAL_PCI_MSI_EOI ;
 int PIC_ENABLE (int ,int ,int ,void**) ;
 struct opalpci_softc* device_get_softc (int ) ;
 int opal_call (int ,int ,int ,void**) ;
 int root_pic ;

__attribute__((used)) static void
opalpic_pic_enable(device_t dev, u_int irq, u_int vector, void **priv)
{
 struct opalpci_softc *sc = device_get_softc(dev);

 PIC_ENABLE(root_pic, irq, vector, priv);
 opal_call(OPAL_PCI_MSI_EOI, sc->phb_id, irq, priv);
}
