
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
typedef int device_t ;


 int ENXIO ;
 int PCIM_HDRTYPE ;
 int PCIR_HDRTYPE ;
 int device_set_desc_copy (int ,int ) ;
 int pci_get_bus (int ) ;
 int pci_get_domain (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int pci_read_config (int ,int ,int) ;
 int proto_pci_devnames ;
 int proto_pci_prefix ;
 int proto_probe (int ,int ,int *) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_printf (struct sbuf*,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
proto_pci_probe(device_t dev)
{
 struct sbuf *sb;

 if ((pci_read_config(dev, PCIR_HDRTYPE, 1) & PCIM_HDRTYPE) != 0)
  return (ENXIO);

 sb = sbuf_new_auto();
 sbuf_printf(sb, "%s%d:%d:%d:%d", proto_pci_prefix, pci_get_domain(dev),
     pci_get_bus(dev), pci_get_slot(dev), pci_get_function(dev));
 sbuf_finish(sb);
 device_set_desc_copy(dev, sbuf_data(sb));
 sbuf_delete(sb);
 return (proto_probe(dev, proto_pci_prefix, &proto_pci_devnames));
}
