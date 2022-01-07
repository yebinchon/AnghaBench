
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ISCI_DOMAIN {int sci_object; struct ISCI_CONTROLLER* controller; int index; } ;
struct ISCI_CONTROLLER {int scif_controller_handle; } ;


 int sci_object_set_association (int ,void*) ;
 int scif_controller_get_domain_handle (int ,int ,int *) ;

void
isci_domain_construct(struct ISCI_DOMAIN *domain, uint32_t domain_index,
    struct ISCI_CONTROLLER *controller)
{

 scif_controller_get_domain_handle( controller->scif_controller_handle,
     domain_index, &domain->sci_object);

 domain->index = domain_index;
 domain->controller = controller;
 sci_object_set_association(domain->sci_object, (void *)domain);
}
