
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdac_softc {int flags; int num_sdo; TYPE_1__* codecs; } ;
typedef size_t nid_t ;
typedef int device_t ;
struct TYPE_2__ {uintptr_t vendor_id; uintptr_t device_id; uintptr_t revision_id; uintptr_t stepping_id; } ;


 int ENOENT ;
 int HDAC_F_DMA_NOCACHE ;
 int device_get_ivars (int ) ;
 struct hdac_softc* device_get_softc (int ) ;
 uintptr_t pci_get_subdevice (int ) ;
 uintptr_t pci_get_subvendor (int ) ;

__attribute__((used)) static int
hdac_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct hdac_softc *sc = device_get_softc(dev);
 nid_t cad = (uintptr_t)device_get_ivars(child);

 switch (which) {
 case 136:
  *result = cad;
  break;
 case 128:
  *result = sc->codecs[cad].vendor_id;
  break;
 case 135:
  *result = sc->codecs[cad].device_id;
  break;
 case 133:
  *result = sc->codecs[cad].revision_id;
  break;
 case 132:
  *result = sc->codecs[cad].stepping_id;
  break;
 case 129:
  *result = pci_get_subvendor(dev);
  break;
 case 130:
  *result = pci_get_subdevice(dev);
  break;
 case 134:
  *result = (sc->flags & HDAC_F_DMA_NOCACHE) != 0;
  break;
 case 131:
  *result = (1 << (1 << sc->num_sdo)) - 1;
  break;
 default:
  return (ENOENT);
 }
 return (0);
}
