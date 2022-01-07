
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
typedef scalar_t__ U16 ;
struct TYPE_3__ {int constant_memory_alignment; int constant_memory_size; scalar_t__ constant_memory_attributes; int * virtual_address; int physical_address; } ;
typedef TYPE_1__ SCI_PHYSICAL_MEMORY_DESCRIPTOR_T ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int sci_cb_physical_address_lower (int ) ;

BOOL sci_base_mde_is_valid(
   SCI_PHYSICAL_MEMORY_DESCRIPTOR_T * mde,
   U32 alignment,
   U32 size,
   U16 attributes
)
{

   U32 physical_address = sci_cb_physical_address_lower(mde->physical_address);

   if (
         ((physical_address & (alignment - 1)) != 0)
      || (mde->constant_memory_alignment != alignment)
      || (mde->constant_memory_size != size)
      || (mde->virtual_address == ((void*)0))
      || (mde->constant_memory_attributes != attributes)
      )
   {
      return FALSE;
   }

   return TRUE;
}
