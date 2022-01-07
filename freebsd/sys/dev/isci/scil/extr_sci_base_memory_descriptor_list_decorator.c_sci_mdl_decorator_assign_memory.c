
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U64 ;
typedef scalar_t__ U32 ;
struct TYPE_3__ {scalar_t__ constant_memory_attributes; int constant_memory_alignment; scalar_t__ constant_memory_size; int physical_address; void* virtual_address; } ;
typedef TYPE_1__ SCI_PHYSICAL_MEMORY_DESCRIPTOR_T ;
typedef int SCI_PHYSICAL_ADDRESS ;
typedef int SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T ;
typedef int POINTER_UINT ;


 int sci_cb_make_physical_address (int ,scalar_t__,scalar_t__) ;
 scalar_t__ sci_cb_physical_address_lower (int ) ;
 scalar_t__ sci_cb_physical_address_upper (int ) ;
 int sci_mdl_first_entry (int ) ;
 TYPE_1__* sci_mdl_get_current_entry (int ) ;
 int sci_mdl_next_entry (int ) ;

void sci_mdl_decorator_assign_memory(
   SCI_MEMORY_DESCRIPTOR_LIST_HANDLE_T mdl,
   U32 attributes,
   POINTER_UINT virtual_address,
   SCI_PHYSICAL_ADDRESS sci_physical_address
)
{
   SCI_PHYSICAL_MEMORY_DESCRIPTOR_T * mde;
   U64 physical_address;

   physical_address
      = ((U64) sci_cb_physical_address_lower(sci_physical_address))
        | (((U64) sci_cb_physical_address_upper(sci_physical_address)) << 32);

   sci_mdl_first_entry(mdl);
   mde = sci_mdl_get_current_entry(mdl);
   while (mde != ((void*)0))
   {



      if ( (mde->constant_memory_attributes == attributes)
         || (attributes == 0) )
      {

         if ((virtual_address % mde->constant_memory_alignment) != 0)
         {
            virtual_address
               += (mde->constant_memory_alignment -
                   (virtual_address % mde->constant_memory_alignment));
         }


         if ((physical_address % mde->constant_memory_alignment) != 0)
         {
            physical_address
               += (mde->constant_memory_alignment -
                   (physical_address % mde->constant_memory_alignment));
         }


         mde->virtual_address = (void *)virtual_address;
         sci_cb_make_physical_address(
            mde->physical_address,
            (U32) (physical_address >> 32),
            (U32) (physical_address & 0xFFFFFFFF)
         );

         virtual_address += mde->constant_memory_size;
         physical_address += mde->constant_memory_size;
      }


      sci_mdl_next_entry(mdl);
      mde = sci_mdl_get_current_entry (mdl);
   }
}
