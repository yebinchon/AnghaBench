
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_i810_match {int dummy; } ;
typedef int device_t ;






 int AGP_I85X_CAPID ;
 int device_set_desc (int ,char*) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static void
agp_82852_set_desc(device_t dev, const struct agp_i810_match *match)
{

 switch (pci_read_config(dev, AGP_I85X_CAPID, 1)) {
 case 128:
  device_set_desc(dev,
      "Intel 82855GME (855GME GMCH) SVGA controller");
  break;
 case 129:
  device_set_desc(dev,
      "Intel 82855GM (855GM GMCH) SVGA controller");
  break;
 case 130:
  device_set_desc(dev,
      "Intel 82852GME (852GME GMCH) SVGA controller");
  break;
 case 131:
  device_set_desc(dev,
      "Intel 82852GM (852GM GMCH) SVGA controller");
  break;
 default:
  device_set_desc(dev,
      "Intel 8285xM (85xGM GMCH) SVGA controller");
  break;
 }
}
