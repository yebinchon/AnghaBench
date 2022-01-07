
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {scalar_t__ descriptor_sense_enable; } ;
typedef TYPE_2__ SATI_TRANSLATOR_SEQUENCE_T ;


 int SCSI_DESCRIPTOR_CURRENT_RESPONSE_CODE ;
 int SCSI_FIXED_CURRENT_RESPONSE_CODE ;

__attribute__((used)) static
U8 sati_scsi_get_sense_data_response_code(SATI_TRANSLATOR_SEQUENCE_T * sequence)
{
    if (sequence->device->descriptor_sense_enable)
    {
       return SCSI_DESCRIPTOR_CURRENT_RESPONSE_CODE;
    }
    else
    {
       return SCSI_FIXED_CURRENT_RESPONSE_CODE;
    }
}
