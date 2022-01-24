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
typedef  size_t uint32_t ;
struct octeon_device {size_t octeon_id; int /*<<< orphan*/  device_name; int /*<<< orphan*/  mem_access_lock; int /*<<< orphan*/  pci_win_lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 char* LIO_DRV_NAME ; 
 size_t LIO_MAX_DEVICES ; 
 int /*<<< orphan*/  MTX_DEF ; 
 struct octeon_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct octeon_device** octeon_device ; 
 int /*<<< orphan*/  octeon_device_count ; 
 int /*<<< orphan*/  octeon_devices_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,size_t) ; 

struct octeon_device *
FUNC5(device_t device)
{
	struct octeon_device	*oct = NULL;
	uint32_t	oct_idx = 0;

	FUNC2(&octeon_devices_lock);

	for (oct_idx = 0; oct_idx < LIO_MAX_DEVICES; oct_idx++)
		if (!octeon_device[oct_idx])
			break;

	if (oct_idx < LIO_MAX_DEVICES) {
		oct = FUNC0(device);
		if (oct != NULL) {
			octeon_device_count++;
			octeon_device[oct_idx] = oct;
		}
	}

	FUNC3(&octeon_devices_lock);

	if (oct == NULL)
		return (NULL);

	FUNC1(&oct->pci_win_lock, "pci_win_lock", NULL, MTX_DEF);
	FUNC1(&oct->mem_access_lock, "mem_access_lock", NULL, MTX_DEF);

	oct->octeon_id = oct_idx;
	FUNC4(oct->device_name, sizeof(oct->device_name), "%s%d",
		 LIO_DRV_NAME, oct->octeon_id);

	return (oct);
}