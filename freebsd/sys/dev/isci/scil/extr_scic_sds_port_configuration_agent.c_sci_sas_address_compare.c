
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ high; scalar_t__ low; } ;
typedef TYPE_1__ SCI_SAS_ADDRESS_T ;
typedef int S32 ;



__attribute__((used)) static
S32 sci_sas_address_compare(
   SCI_SAS_ADDRESS_T address_one,
   SCI_SAS_ADDRESS_T address_two
)
{
   if (address_one.high > address_two.high)
   {
      return 1;
   }
   else if (address_one.high < address_two.high)
   {
      return -1;
   }
   else if (address_one.low > address_two.low)
   {
      return 1;
   }
   else if (address_one.low < address_two.low)
   {
      return -1;
   }


   return 0;
}
