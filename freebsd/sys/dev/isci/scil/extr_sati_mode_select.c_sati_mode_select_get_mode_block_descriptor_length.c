
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
typedef int U32 ;
typedef int U16 ;
struct TYPE_4__ {int* block_descriptor_length; } ;
struct TYPE_3__ {int block_descriptor_length; } ;
typedef TYPE_1__ SCSI_MODE_SELECT_MODE_PARAMETER_HEADER_6_T ;
typedef TYPE_2__ SCSI_MODE_SELECT_MODE_PARAMETER_HEADER_10_T ;



__attribute__((used)) static
U32 sati_mode_select_get_mode_block_descriptor_length(
   U8 * mode_parameters,
   U32 cdb_size
)
{
   U32 mode_block_descriptor_length = 0;
   SCSI_MODE_SELECT_MODE_PARAMETER_HEADER_6_T * mode_parameters_6;
   SCSI_MODE_SELECT_MODE_PARAMETER_HEADER_10_T * mode_parameters_10;

   if(cdb_size == 6)
   {
      mode_parameters_6 = (SCSI_MODE_SELECT_MODE_PARAMETER_HEADER_6_T *) mode_parameters;
      mode_block_descriptor_length = mode_parameters_6->block_descriptor_length;
   }
   else if(cdb_size == 10)
   {
      mode_parameters_10 = (SCSI_MODE_SELECT_MODE_PARAMETER_HEADER_10_T *) mode_parameters;



      mode_block_descriptor_length =(((U16)mode_parameters_10->block_descriptor_length[0]) << 8) +
         mode_parameters_10->block_descriptor_length[1];

   }

   return mode_block_descriptor_length;

}
