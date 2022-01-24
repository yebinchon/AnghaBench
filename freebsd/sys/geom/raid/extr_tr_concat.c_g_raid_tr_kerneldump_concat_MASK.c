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
struct g_raid_volume {scalar_t__ v_state; int v_disks_count; struct g_raid_subdisk* v_subdisks; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {scalar_t__ sd_size; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ G_RAID_VOLUME_S_OPTIMAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (struct g_raid_subdisk*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct g_raid_tr_object *tr,
    void *virtual, vm_offset_t physical, off_t boffset, size_t blength)
{
	struct g_raid_volume *vol;
	struct g_raid_subdisk *sd;
	char *addr;
	off_t offset, length, remain;
	int error, no;

	vol = tr->tro_volume;
	if (vol->v_state != G_RAID_VOLUME_S_OPTIMAL)
		return (ENXIO);

	offset = boffset;
	remain = blength;
	addr = virtual;
	no = 0;
	while (no < vol->v_disks_count &&
	    offset >= vol->v_subdisks[no].sd_size) {
		offset -= vol->v_subdisks[no].sd_size;
		no++;
	}
	FUNC0(no < vol->v_disks_count,
	    ("Request starts after volume end (%ju)", boffset));
	do {
		sd = &vol->v_subdisks[no];
		length = FUNC1(sd->sd_size - offset, remain);
		error = FUNC2(&vol->v_subdisks[no],
		    addr, 0, offset, length);
		if (error != 0)
			return (error);
		remain -= length;
		addr += length;
		offset = 0;
		no++;
		FUNC0(no < vol->v_disks_count || remain == 0,
		    ("Request ends after volume end (%ju, %zu)",
			boffset, blength));
	} while (remain > 0);
	return (0);
}