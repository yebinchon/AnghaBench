
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_3__ {scalar_t__ constant_memory_attributes; scalar_t__ constant_memory_alignment; scalar_t__ constant_memory_size; } ;
typedef TYPE_1__ SCI_PHYSICAL_MEMORY_DESCRIPTOR_T ;
typedef int SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T ;


 int sci_mdl_first_entry (int ) ;
 TYPE_1__* sci_mdl_get_current_entry (int ) ;
 int sci_mdl_next_entry (int ) ;

U32 sci_mdl_decorator_get_memory_size(
   SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T mdl,
   U32 attributes
)
{
   U32 size = 0;
   SCI_PHYSICAL_MEMORY_DESCRIPTOR_T * mde;

   sci_mdl_first_entry(mdl);
   mde = sci_mdl_get_current_entry(mdl);
   while (mde != ((void*)0))
   {
      if ( (mde->constant_memory_attributes == attributes)
         || (attributes == 0) )
         size += (mde->constant_memory_size + mde->constant_memory_alignment);

      sci_mdl_next_entry(mdl);
      mde = sci_mdl_get_current_entry(mdl);
   }

   return size;
}
