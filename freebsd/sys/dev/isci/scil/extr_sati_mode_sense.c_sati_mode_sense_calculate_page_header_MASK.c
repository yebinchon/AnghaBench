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
typedef  int /*<<< orphan*/  U16 ;

/* Variables and functions */
 scalar_t__ SCSI_MODE_SENSE_10_HEADER_LENGTH ; 
 scalar_t__ SCSI_MODE_SENSE_6_HEADER_LENGTH ; 
 int SCSI_MODE_SENSE_DBD_ENABLE ; 
 int SCSI_MODE_SENSE_LLBAA_ENABLE ; 
 scalar_t__ SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH ; 
 scalar_t__ SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH ; 
 int* FUNC0 (void*) ; 
 int FUNC1 (int*,int) ; 

U16 FUNC2(
   void * scsi_io,
   U8     cdb_size
)
{
   U8 * cdb         = FUNC0(scsi_io);
   U16  page_length = 0;

   // The Mode page header length is different for 6-byte vs. 10-byte CDBs.
   if (cdb_size == 6)
      page_length += SCSI_MODE_SENSE_6_HEADER_LENGTH;
   else
      page_length += SCSI_MODE_SENSE_10_HEADER_LENGTH;

   // Are block descriptors disabled (DBD)?  0 indicates they are enabled.
   if ((FUNC1(cdb, 1) & SCSI_MODE_SENSE_DBD_ENABLE) == 0)
   {
      // The LLBAA bit is not defined for 6-byte mode sense requests.
      if (  (cdb_size == 10)
         && (FUNC1(cdb, 1) & SCSI_MODE_SENSE_LLBAA_ENABLE) )
         page_length += SCSI_MODE_SENSE_LLBA_BLOCK_DESCRIPTOR_LENGTH;
      else
         page_length += SCSI_MODE_SENSE_STD_BLOCK_DESCRIPTOR_LENGTH;
   }

   return page_length;
}