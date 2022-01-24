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
typedef  int /*<<< orphan*/  SATI_TRANSLATOR_SEQUENCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int,int) ; 

__attribute__((used)) static
void FUNC1(
   SATI_TRANSLATOR_SEQUENCE_T * sequence,
   void                       * scsi_io
)
{
      FUNC0(sequence, scsi_io, 8, 0x00);   //log_parameter byte 4
      FUNC0(sequence, scsi_io, 9, 0x00);   //log_parameter byte 5
      FUNC0(sequence, scsi_io, 10, 0x00);  //log_parameter byte 6
      FUNC0(sequence, scsi_io, 11, 0x00);  //log_parameter byte 7
      FUNC0(sequence, scsi_io, 12, 0x00);  //log_parameter byte 8
      FUNC0(sequence, scsi_io, 13, 0x00);  //log_parameter byte 9
      FUNC0(sequence, scsi_io, 14, 0x00);  //log_parameter byte 10
      FUNC0(sequence, scsi_io, 15, 0x00);  //log_parameter byte 11
      FUNC0(sequence, scsi_io, 16, 0x00);  //log_parameter byte 12
      FUNC0(sequence, scsi_io, 17, 0x00);  //log_parameter byte 13
      FUNC0(sequence, scsi_io, 18, 0x00);  //log_parameter byte 14
      FUNC0(sequence, scsi_io, 19, 0x00);  //log_parameter byte 15
      FUNC0(sequence, scsi_io, 20, 0x00);  //log_parameter byte 16
      FUNC0(sequence, scsi_io, 21, 0x00);  //log_parameter byte 17
      FUNC0(sequence, scsi_io, 22, 0x00);  //log_parameter byte 18
      FUNC0(sequence, scsi_io, 23, 0x00);  //log_parameter byte 19
}