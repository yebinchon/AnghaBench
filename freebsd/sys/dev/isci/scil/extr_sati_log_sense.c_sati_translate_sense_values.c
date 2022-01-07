
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SATI_TRANSLATOR_SEQUENCE_T ;


 int SCSI_ASC_NO_ADDITIONAL_SENSE ;
 int SCSI_DIAGNOSTIC_FAILURE_ON_COMPONENT ;
 int SCSI_SENSE_ABORTED_COMMAND ;
 int SCSI_SENSE_HARDWARE_ERROR ;
 int SCSI_SENSE_MEDIUM_ERROR ;
 int SCSI_SENSE_NO_SENSE ;
 int sati_set_data_byte (int *,void*,int,int) ;

__attribute__((used)) static
void sati_translate_sense_values(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   U8 self_test_status_byte
)
{

   sati_set_data_byte(
      sequence,
      scsi_io,
      21,
      SCSI_DIAGNOSTIC_FAILURE_ON_COMPONENT
   );

   switch(self_test_status_byte)
   {
      case 1:

         sati_set_data_byte(sequence, scsi_io, 20, SCSI_SENSE_ABORTED_COMMAND);


         sati_set_data_byte(sequence, scsi_io, 22, 0x81);
         break;

      case 2:

         sati_set_data_byte(sequence, scsi_io, 20, SCSI_SENSE_ABORTED_COMMAND);


         sati_set_data_byte(sequence, scsi_io, 22, 0x82);
         break;

      case 3:

         sati_set_data_byte(sequence, scsi_io, 20, SCSI_SENSE_ABORTED_COMMAND);


         sati_set_data_byte(sequence, scsi_io, 22, 0x83);
         break;

      case 4:

         sati_set_data_byte(sequence, scsi_io, 20, SCSI_SENSE_HARDWARE_ERROR);


         sati_set_data_byte(sequence, scsi_io, 22, 0x84);
         break;

      case 5:

         sati_set_data_byte(sequence, scsi_io, 20, SCSI_SENSE_HARDWARE_ERROR);


         sati_set_data_byte(sequence, scsi_io, 22, 0x85);
         break;

      case 6:

         sati_set_data_byte(sequence, scsi_io, 20, SCSI_SENSE_HARDWARE_ERROR);


         sati_set_data_byte(sequence, scsi_io, 22, 0x86);
         break;

      case 7:

         sati_set_data_byte(sequence, scsi_io, 20, SCSI_SENSE_MEDIUM_ERROR);


         sati_set_data_byte(sequence, scsi_io, 22, 0x87);
         break;

      case 8:

         sati_set_data_byte(sequence, scsi_io, 20, SCSI_SENSE_HARDWARE_ERROR);


         sati_set_data_byte(sequence, scsi_io, 22, 0x88);
         break;

      default:

         sati_set_data_byte(sequence, scsi_io, 20, SCSI_SENSE_NO_SENSE);

         sati_set_data_byte(sequence, scsi_io, 21, SCSI_ASC_NO_ADDITIONAL_SENSE);

         sati_set_data_byte(sequence, scsi_io, 22, 0x00);
         break;
   }

}
