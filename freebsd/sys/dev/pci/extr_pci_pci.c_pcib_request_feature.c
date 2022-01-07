
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pci_feature { ____Placeholder_pci_feature } pci_feature ;
typedef int device_t ;


 int PCIB_REQUEST_FEATURE (int ,int ,int) ;

int
pcib_request_feature(device_t dev, enum pci_feature feature)
{





 return (PCIB_REQUEST_FEATURE(dev, dev, feature));
}
