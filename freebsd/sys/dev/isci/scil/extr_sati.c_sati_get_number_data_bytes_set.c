
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U16 ;
struct TYPE_3__ {int number_data_bytes_set; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;



U16 sati_get_number_data_bytes_set(
   SATI_TRANSLATOR_SEQUENCE_T * sequence
)
{
   return sequence->number_data_bytes_set;
}
