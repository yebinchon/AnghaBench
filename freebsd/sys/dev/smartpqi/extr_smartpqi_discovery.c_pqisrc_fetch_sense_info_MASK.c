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
typedef  int /*<<< orphan*/  uint8_t ;
struct sense_header_scsi {int /*<<< orphan*/  ascq; int /*<<< orphan*/  asc; int /*<<< orphan*/  sense_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,unsigned int,struct sense_header_scsi*) ; 

__attribute__((used)) static void FUNC3(const uint8_t *sense_data,
	unsigned sense_data_length, uint8_t *sense_key, uint8_t *asc, uint8_t *ascq)
{
	struct sense_header_scsi header;

	FUNC1("IN\n");

	*sense_key = 0;
	*ascq = 0;
	*asc = 0;

	if (FUNC2(sense_data, sense_data_length, &header)) {
		*sense_key = header.sense_key;
		*asc = header.asc;
		*ascq = header.ascq;
	}

	FUNC0("sense_key: %x asc: %x ascq: %x\n", *sense_key, *asc, *ascq);

	FUNC1("OUT\n");
}