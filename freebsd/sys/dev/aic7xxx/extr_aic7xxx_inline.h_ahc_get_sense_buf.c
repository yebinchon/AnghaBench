
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_sense_data {int dummy; } ;
struct scb {int dummy; } ;
struct ahc_softc {TYPE_1__* scb_data; } ;
struct TYPE_2__ {struct scsi_sense_data* sense; struct scb* scbarray; } ;



__attribute__((used)) static __inline struct scsi_sense_data *
ahc_get_sense_buf(struct ahc_softc *ahc, struct scb *scb)
{
 int offset;

 offset = scb - ahc->scb_data->scbarray;
 return (&ahc->scb_data->sense[offset]);
}
