
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pci_feature { ____Placeholder_pci_feature } pci_feature ;
typedef int device_t ;


 int EINVAL ;



int
pcib_request_feature_allow(device_t pcib, device_t dev,
    enum pci_feature feature)
{




 switch (feature) {
 case 129:
 case 128:
  break;
 default:
  return (EINVAL);
 }

 return (0);
}
