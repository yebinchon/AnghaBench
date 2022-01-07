
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_sense_data {int dummy; } ;
struct TYPE_6__ {struct scsi_sense_data* sense_buffers; } ;
struct TYPE_5__ {int TagNumber; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PACB ;



__attribute__((used)) static struct scsi_sense_data *
trm_get_sense_buf(PACB pACB, PSRB pSRB)
{
 int offset;

 offset = pSRB->TagNumber;
 return (&pACB->sense_buffers[offset]);
}
