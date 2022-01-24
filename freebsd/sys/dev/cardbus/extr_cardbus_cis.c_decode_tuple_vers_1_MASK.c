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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct tuple_callbacks {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ cardbus_cis_debug ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static int
FUNC1(device_t cbdev, device_t child, int id,
    int len, uint8_t *tupledata, uint32_t start, uint32_t *off,
    struct tuple_callbacks *info, void *argp)
{
	int i;

	if (cardbus_cis_debug) {
		FUNC0("Product version: %d.%d\n", tupledata[0], tupledata[1]);
		FUNC0("Product name: ");
		for (i = 2; i < len; i++) {
			if (tupledata[i] == '\0')
				FUNC0(" | ");
			else if (tupledata[i] == 0xff)
				break;
			else
				FUNC0("%c", tupledata[i]);
		}
		FUNC0("\n");
	}
	return (0);
}