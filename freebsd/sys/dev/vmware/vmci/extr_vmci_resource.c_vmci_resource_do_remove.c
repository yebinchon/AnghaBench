
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_resource {int container_object; int (* container_free_cb ) (int ) ;} ;


 int ASSERT (struct vmci_resource*) ;
 int stub1 (int ) ;

__attribute__((used)) static void inline
vmci_resource_do_remove(struct vmci_resource *resource)
{

 ASSERT(resource);

 if (resource->container_free_cb) {
  resource->container_free_cb(resource->container_object);

 }
}
