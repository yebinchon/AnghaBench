
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
struct TYPE_2__ {int data_present; int* response_data_length; scalar_t__ data; scalar_t__ status; } ;
typedef TYPE_1__ SCI_SSP_RESPONSE_IU_T ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 scalar_t__ sati_cb_get_response_iu_address (void*) ;

void sati_scsi_response_data_construct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   U8 response_data
)
{
}
