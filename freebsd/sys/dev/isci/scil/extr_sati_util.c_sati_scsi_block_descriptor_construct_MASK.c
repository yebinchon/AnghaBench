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

/* Variables and functions */
 int SCSI_BLOCK_DESCRIPTOR_ADDITIONAL_LENGTH ; 
 int SCSI_BLOCK_DESCRIPTOR_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static
void FUNC1(
        U8 * sense_data,
        U32 sense_len)
{
    U8 ili = 1;

    FUNC0(sense_data, sense_len, 0,  SCSI_BLOCK_DESCRIPTOR_TYPE);
    FUNC0(sense_data, sense_len, 1,  SCSI_BLOCK_DESCRIPTOR_ADDITIONAL_LENGTH);
    FUNC0(sense_data, sense_len, 2,  0);
    FUNC0(sense_data, sense_len, 3,  (ili << 5));
}