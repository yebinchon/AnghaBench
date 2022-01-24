#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int U8 ;
typedef  int U32 ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  SATI_SEQUENCE_STATE_FINAL ; 
 int* FUNC0 (void*) ; 
 int FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int*) ; 
 int FUNC3 (int*) ; 
 int FUNC4 (int*) ; 
 int FUNC5 (int*) ; 
 int FUNC6 (int*) ; 
 int FUNC7 (int*) ; 
 int FUNC8 (int*) ; 
 int FUNC9 (int*) ; 
 int FUNC10 (int*) ; 
 scalar_t__ FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,void*,int,int) ; 

void FUNC13(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io,
   void                       * ata_io
)
{
   U8 * register_fis = FUNC0(ata_io);
   U32 offset;

   //SATA transport
   FUNC12(sequence, scsi_io, 36, 0x34);
   FUNC12(sequence, scsi_io, 37, 0x00);
   FUNC12(sequence, scsi_io, 38, (U8) FUNC11(register_fis));
   FUNC12(sequence, scsi_io, 39, (U8) FUNC2(register_fis));
   FUNC12(sequence, scsi_io, 40, FUNC5(register_fis));
   FUNC12(sequence, scsi_io, 41, FUNC7(register_fis));
   FUNC12(sequence, scsi_io, 42, FUNC3(register_fis));
   FUNC12(sequence, scsi_io, 43, FUNC1(register_fis));
   FUNC12(sequence, scsi_io, 44, FUNC6(register_fis));
   FUNC12(sequence, scsi_io, 45, FUNC8(register_fis));
   FUNC12(sequence, scsi_io, 46, FUNC4(register_fis));
   FUNC12(sequence, scsi_io, 47, 0x00);
   FUNC12(sequence, scsi_io, 48, FUNC9(register_fis));
   FUNC12(sequence, scsi_io, 49, FUNC10(register_fis));

   for(offset = 50; offset < 56; offset++)
   {
      FUNC12(sequence, scsi_io, offset, 0x00);
   }

   sequence->state = SATI_SEQUENCE_STATE_FINAL;
}