
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_3__ {scalar_t__ protocol; int data_direction; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;
typedef int SATI_STATUS ;


 int PASSTHROUGH_CDB_T_DIR (int *) ;
 scalar_t__ PASSTHROUGH_PIO_DATA_IN ;
 scalar_t__ PASSTHROUGH_PIO_DATA_OUT ;
 scalar_t__ PASSTHROUGH_UDMA_DATA_IN ;
 scalar_t__ PASSTHROUGH_UDMA_DATA_OUT ;
 int SATI_COMPLETE ;
 int SATI_DATA_DIRECTION_IN ;
 int SATI_DATA_DIRECTION_NONE ;
 int SATI_DATA_DIRECTION_OUT ;
 int SATI_FAILURE ;

__attribute__((used)) static
SATI_STATUS sati_passthrough_check_direction(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   U8 * cdb
)
{
   if ((sequence->protocol == PASSTHROUGH_PIO_DATA_IN) ||
       (sequence->protocol == PASSTHROUGH_UDMA_DATA_IN))
   {
      if (PASSTHROUGH_CDB_T_DIR(cdb) == 0x0)
      {
         return SATI_FAILURE;
      }
      else
      {
         sequence->data_direction = SATI_DATA_DIRECTION_IN;
      }
   }
   else if ((sequence->protocol == PASSTHROUGH_PIO_DATA_OUT) ||
            (sequence->protocol == PASSTHROUGH_UDMA_DATA_OUT))
   {
      if (PASSTHROUGH_CDB_T_DIR(cdb) == 0x1)
      {
         return SATI_FAILURE;
      }
      else
      {
         sequence->data_direction = SATI_DATA_DIRECTION_OUT;
      }
   }
   else
   {
      sequence->data_direction = SATI_DATA_DIRECTION_NONE;
   }

   return SATI_COMPLETE;
}
