#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int U8 ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
#define  SCSI_MODE_SENSE_10 128 
 int* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int*) ; 

U32 FUNC2(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * atapi_io
)
{
   U8* cdb = FUNC0(scsi_io);
   U8 response_data;
   U32 data_length = 0;

   switch(cdb[0])
   {
      case SCSI_MODE_SENSE_10:
         FUNC1(scsi_io, 1, &response_data);
         data_length = response_data+2;
         break;

      case 0x51: //READ DISC INFORMATION
         FUNC1(scsi_io, 1, &response_data);
         data_length = response_data+2;
         break;

      default:
         break;
   }

   return data_length;
}