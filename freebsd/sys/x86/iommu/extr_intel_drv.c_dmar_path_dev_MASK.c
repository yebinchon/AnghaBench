#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_3__ {int /*<<< orphan*/  Function; int /*<<< orphan*/  Device; } ;
typedef  TYPE_1__ ACPI_DMAR_PCI_PATH ;

/* Variables and functions */
 int /*<<< orphan*/  PCIR_SECBUS_1 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static device_t
FUNC3(int segment, int path_len, int busno,
    const ACPI_DMAR_PCI_PATH *path, uint16_t *rid)
{
	device_t dev;
	int i;

	dev = NULL;
	for (i = 0; i < path_len; i++) {
		dev = FUNC2(segment, busno, path->Device,
		    path->Function);
		if (i != path_len - 1) {
			busno = FUNC1(busno, path->Device,
			    path->Function, PCIR_SECBUS_1, 1);
			path++;
		}
	}
	*rid = FUNC0(busno, path->Device, path->Function);
	return (dev);
}