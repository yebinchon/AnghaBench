
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next_mdl; scalar_t__ next_index; } ;
typedef scalar_t__ SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T ;
typedef TYPE_1__ SCI_BASE_MEMORY_DESCRIPTOR_LIST_T ;


 scalar_t__ SCI_INVALID_HANDLE ;

void sci_mdl_first_entry(
   SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T mdl
)
{
   SCI_BASE_MEMORY_DESCRIPTOR_LIST_T * base_mdl = (SCI_BASE_MEMORY_DESCRIPTOR_LIST_T*) mdl;

   base_mdl->next_index = 0;



   if (base_mdl->next_mdl != SCI_INVALID_HANDLE)
      sci_mdl_first_entry(base_mdl->next_mdl);
}
