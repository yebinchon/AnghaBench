
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* self_test_descriptor_index; } ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;
typedef TYPE_1__ ATA_EXTENDED_SMART_SELF_TEST_LOG_T ;


 int sati_get_self_test_results (int *,void*,TYPE_1__*) ;
 int sati_self_test_log_header_construct (int *,void*) ;
 int sati_set_parameters_to_zero (int *,void*) ;

__attribute__((used)) static
void sati_extended_self_test_log_page_construct(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_data
)
{
   ATA_EXTENDED_SMART_SELF_TEST_LOG_T * ata_log =
                  (ATA_EXTENDED_SMART_SELF_TEST_LOG_T*) ata_data;

   sati_self_test_log_header_construct(sequence, scsi_io);


   if( (ata_log->self_test_descriptor_index[0] == 0) &&
       (ata_log->self_test_descriptor_index[1] == 0))
   {
      sati_set_parameters_to_zero(sequence, scsi_io);
   }
   else
   {
      sati_get_self_test_results(sequence, scsi_io, ata_log);
   }
}
