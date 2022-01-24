#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int int16_t ;
struct TYPE_2__ {int /*<<< orphan*/  checksum; } ;
typedef  TYPE_1__ boot_catalog_validation_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(char *entry)
{
	boot_catalog_validation_entry *ve;
	int16_t		checksum, sum;
	unsigned char	*csptr;
	size_t		i;

	ve = (boot_catalog_validation_entry *)entry;

	checksum = FUNC1(ve->checksum);
	FUNC0(0, ve->checksum);
	csptr = (unsigned char *)ve;

	for (i = sum = 0; i < sizeof(*ve); i += 2) {
		sum += (int16_t)csptr[i];
		sum += 256 * (int16_t)csptr[i + 1];
	}
	if (sum + checksum != 0) {
		return (false);
	}
	
	FUNC0(checksum, ve->checksum);
	return (true);
}