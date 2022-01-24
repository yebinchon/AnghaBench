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
typedef  int /*<<< orphan*/  U8 ;
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;
typedef  scalar_t__ SATI_STATUS ;

/* Variables and functions */
 scalar_t__ SATI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*) ; 

SATI_STATUS FUNC3(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io,
   U8                           cdb_length
)
{
   SATI_STATUS   status;

   /**
    * Validate that the supplied page control (PC) field is supported.
    */
   status = FUNC2(sequence, scsi_io);
   if (status != SATI_SUCCESS)
      return status;

   /**
    * Validate that the supplied page code is supported.
    */
   status = FUNC1(sequence,scsi_io,cdb_length);
   if (status != SATI_SUCCESS)
      return status;

   FUNC0(ata_io, sequence);

   return SATI_SUCCESS;
}