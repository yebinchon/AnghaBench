
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vmci_id ;
struct vmci_handle {int dummy; } ;


 int ASSERT (int) ;
 scalar_t__ UNLIKELY (int) ;
 scalar_t__ VMCI_INVALID_ID ;
 struct vmci_handle VMCI_MAKE_HANDLE (scalar_t__,scalar_t__) ;
 scalar_t__ VMCI_RESERVED_RESOURCE_ID_MAX ;
 scalar_t__ resource_id ;
 int resource_id_lock ;
 int resource_table ;
 int vmci_grab_lock (int *) ;
 int vmci_hashtable_entry_exists (int ,struct vmci_handle) ;
 int vmci_release_lock (int *) ;

vmci_id
vmci_resource_get_id(vmci_id context_id)
{
 vmci_id current_rid;
 vmci_id old_rid;
 bool found_rid;

 old_rid = resource_id;
 found_rid = 0;





 ASSERT(old_rid > VMCI_RESERVED_RESOURCE_ID_MAX);

 do {
  struct vmci_handle handle;

  vmci_grab_lock(&resource_id_lock);
  current_rid = resource_id;
  handle = VMCI_MAKE_HANDLE(context_id, current_rid);
  resource_id++;
  if (UNLIKELY(resource_id == VMCI_INVALID_ID)) {

   resource_id = VMCI_RESERVED_RESOURCE_ID_MAX + 1;
  }
  vmci_release_lock(&resource_id_lock);
  found_rid = !vmci_hashtable_entry_exists(resource_table,
      handle);
 } while (!found_rid && resource_id != old_rid);

 if (UNLIKELY(!found_rid))
  return (VMCI_INVALID_ID);
 else
  return (current_rid);
}
