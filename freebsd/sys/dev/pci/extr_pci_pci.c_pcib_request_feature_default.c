
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pci_feature { ____Placeholder_pci_feature } pci_feature ;
typedef int device_t ;


 int PCIB_REQUEST_FEATURE (int ,int ,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
pcib_request_feature_default(device_t pcib, device_t dev,
    enum pci_feature feature)
{
 device_t bus;






 bus = device_get_parent(pcib);
 return (PCIB_REQUEST_FEATURE(device_get_parent(bus), dev, feature));
}
