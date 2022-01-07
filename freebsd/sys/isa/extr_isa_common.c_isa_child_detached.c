
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isa_device {int id_configs; } ;
typedef int device_t ;


 struct isa_device* DEVTOISA (int ) ;
 scalar_t__ TAILQ_FIRST (int *) ;
 int isa_claim_resources (int ,int ) ;

__attribute__((used)) static void
isa_child_detached(device_t dev, device_t child)
{
 struct isa_device* idev = DEVTOISA(child);

 if (TAILQ_FIRST(&idev->id_configs))
  isa_claim_resources(dev, child);
}
