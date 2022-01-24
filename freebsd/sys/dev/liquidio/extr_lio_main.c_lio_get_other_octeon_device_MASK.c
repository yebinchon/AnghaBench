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
struct octeon_device {scalar_t__ device; scalar_t__ octeon_id; } ;

/* Variables and functions */
 struct octeon_device* FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static struct octeon_device *
FUNC3(struct octeon_device *oct)
{
	struct octeon_device	*other_oct;

	other_oct = FUNC0(oct->octeon_id + 1);

	if ((other_oct != NULL) && other_oct->device) {
		int	oct_busnum, other_oct_busnum;

		oct_busnum = FUNC1(oct->device);
		other_oct_busnum = FUNC1(other_oct->device);

		if (oct_busnum == other_oct_busnum) {
			int	oct_slot, other_oct_slot;

			oct_slot = FUNC2(oct->device);
			other_oct_slot = FUNC2(other_oct->device);

			if (oct_slot == other_oct_slot)
				return (other_oct);
		}
	}
	return (NULL);
}