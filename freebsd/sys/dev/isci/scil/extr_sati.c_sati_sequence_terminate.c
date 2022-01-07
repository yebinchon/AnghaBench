
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;



 int sati_unmap_terminate (TYPE_1__*,void*,void*) ;

void sati_sequence_terminate(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void * scsi_io,
   void * ata_io
)
{


   switch (sequence->type)
   {
   case 128:
      sati_unmap_terminate(sequence,scsi_io,ata_io);
   break;
   }
}
