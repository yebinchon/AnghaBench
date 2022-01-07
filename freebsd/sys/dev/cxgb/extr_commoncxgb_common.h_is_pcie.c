
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ variant; } ;
struct TYPE_6__ {TYPE_1__ pci; } ;
struct TYPE_7__ {TYPE_2__ params; } ;
typedef TYPE_3__ adapter_t ;


 scalar_t__ PCI_VARIANT_PCIE ;

__attribute__((used)) static inline unsigned int is_pcie(const adapter_t *adap)
{
 return adap->params.pci.variant == PCI_VARIANT_PCIE;
}
