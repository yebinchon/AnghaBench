
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct sbuf {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int SBcode; int desc; } ;


 int BUS_PROBE_DEFAULT ;
 int ENOMEM ;
 int ENXIO ;
 int PCIR_DEVVENDOR ;
 int device_set_desc_copy (int ,int ) ;
 TYPE_1__* emu_cards ;
 unsigned int emu_getcard (int ) ;
 int pci_read_config (int ,int ,int) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new (int *,int *,int,int ) ;
 int sbuf_printf (struct sbuf*,char*,int ,int ) ;

__attribute__((used)) static int
emu_pci_probe(device_t dev)
{
 struct sbuf *s;
 unsigned int thiscard = 0;
 uint16_t vendor;

 vendor = pci_read_config(dev, PCIR_DEVVENDOR, 2);
 if (vendor != 0x1102)
  return (ENXIO);

 thiscard = emu_getcard(dev);
 if (thiscard == 0)
  return (ENXIO);

 s = sbuf_new(((void*)0), ((void*)0), 4096, 0);
 if (s == ((void*)0))
  return (ENOMEM);
 sbuf_printf(s, "Creative %s [%s]", emu_cards[thiscard].desc, emu_cards[thiscard].SBcode);
 sbuf_finish(s);

 device_set_desc_copy(dev, sbuf_data(s));

 sbuf_delete(s);

 return (BUS_PROBE_DEFAULT);
}
