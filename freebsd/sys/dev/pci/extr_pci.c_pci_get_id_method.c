
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pci_id_type { ____Placeholder_pci_id_type } pci_id_type ;
typedef int device_t ;


 int PCIB_GET_ID (int ,int ,int,uintptr_t*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
pci_get_id_method(device_t dev, device_t child, enum pci_id_type type,
    uintptr_t *id)
{

 return (PCIB_GET_ID(device_get_parent(dev), child, type, id));
}
