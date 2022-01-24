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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct g_raid_volume {int /*<<< orphan*/  v_tr; int /*<<< orphan*/  v_softc; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 

__attribute__((used)) static int
FUNC2(void *arg,
    void *virtual, vm_offset_t physical, off_t offset, size_t length)
{
	struct g_raid_volume *vol;
	int error;

	vol = (struct g_raid_volume *)arg;
	FUNC0(3, vol->v_softc, "Dumping at off %llu len %llu.",
	    (long long unsigned)offset, (long long unsigned)length);

	error = FUNC1(vol->v_tr,
	    virtual, physical, offset, length);
	return (error);
}