
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct scsi_sense_data {int dummy; } ;
struct TYPE_6__ {scalar_t__ sense_busaddr; } ;
struct TYPE_5__ {int TagNumber; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PACB ;



__attribute__((used)) static u_int32_t
trm_get_sense_bufaddr(PACB pACB, PSRB pSRB)
{
 int offset;

 offset = pSRB->TagNumber;
 return (pACB->sense_busaddr +
     (offset * sizeof(struct scsi_sense_data)));
}
