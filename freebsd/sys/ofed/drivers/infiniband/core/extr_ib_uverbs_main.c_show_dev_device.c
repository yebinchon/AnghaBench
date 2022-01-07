
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int device; } ;
struct ib_uverbs_device {TYPE_1__* ib_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ dma_device; } ;


 int ENODEV ;
 struct ib_uverbs_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
show_dev_device(struct device *device, struct device_attribute *attr, char *buf)
{
 struct ib_uverbs_device *dev = dev_get_drvdata(device);

 if (!dev || !dev->ib_dev->dma_device)
  return -ENODEV;

 return sprintf(buf, "0x%04x\n",
     ((struct pci_dev *)dev->ib_dev->dma_device)->device);
}
