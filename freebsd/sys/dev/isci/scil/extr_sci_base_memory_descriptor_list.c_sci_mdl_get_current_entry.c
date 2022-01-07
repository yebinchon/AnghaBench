
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t next_index; size_t length; scalar_t__ next_mdl; int * mde_array; } ;
typedef int SCI_PHYSICAL_MEMORY_DESCRIPTOR_T ;
typedef scalar_t__ SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T ;
typedef TYPE_1__ SCI_BASE_MEMORY_DESCRIPTOR_LIST_T ;


 scalar_t__ SCI_INVALID_HANDLE ;

SCI_PHYSICAL_MEMORY_DESCRIPTOR_T * sci_mdl_get_current_entry(
   SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T mdl
)
{
   SCI_BASE_MEMORY_DESCRIPTOR_LIST_T * base_mdl = (SCI_BASE_MEMORY_DESCRIPTOR_LIST_T*) mdl;

   if (base_mdl->next_index < base_mdl->length)
      return & base_mdl->mde_array[base_mdl->next_index];
   else if (base_mdl->next_index == base_mdl->length)
   {


      if (base_mdl->next_mdl != SCI_INVALID_HANDLE)
         return sci_mdl_get_current_entry(base_mdl->next_mdl);
   }

   return ((void*)0);
}
