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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct disklabel {int d_type; int d_subtype; int d_sparespertrack; int d_sparespercyl; int d_rpm; int d_interleave; int d_trackskew; int d_cylskew; int d_npartitions; int /*<<< orphan*/ * d_partitions; int /*<<< orphan*/  d_sbsize; int /*<<< orphan*/  d_bbsize; int /*<<< orphan*/  d_magic2; int /*<<< orphan*/ * d_spare; int /*<<< orphan*/ * d_drivedata; int /*<<< orphan*/  d_flags; int /*<<< orphan*/  d_trkseek; int /*<<< orphan*/  d_headswitch; int /*<<< orphan*/  d_acylinders; int /*<<< orphan*/  d_secperunit; int /*<<< orphan*/  d_secpercyl; int /*<<< orphan*/  d_ncylinders; int /*<<< orphan*/  d_ntracks; int /*<<< orphan*/  d_nsectors; int /*<<< orphan*/  d_secsize; int /*<<< orphan*/  d_packname; int /*<<< orphan*/  d_typename; int /*<<< orphan*/  d_magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(u_char *ptr, struct disklabel *d)
{
	int i;
	u_char *p, *pe;
	uint16_t sum;

	FUNC4(ptr + 0, d->d_magic);
	FUNC3(ptr + 4, d->d_type);
	FUNC3(ptr + 6, d->d_subtype);
	FUNC0(d->d_typename, ptr + 8, 16);
	FUNC0(d->d_packname, ptr + 24, 16);
	FUNC4(ptr + 40, d->d_secsize);
	FUNC4(ptr + 44, d->d_nsectors);
	FUNC4(ptr + 48, d->d_ntracks);
	FUNC4(ptr + 52, d->d_ncylinders);
	FUNC4(ptr + 56, d->d_secpercyl);
	FUNC4(ptr + 60, d->d_secperunit);
	FUNC3(ptr + 64, d->d_sparespertrack);
	FUNC3(ptr + 66, d->d_sparespercyl);
	FUNC4(ptr + 68, d->d_acylinders);
	FUNC3(ptr + 72, d->d_rpm);
	FUNC3(ptr + 74, d->d_interleave);
	FUNC3(ptr + 76, d->d_trackskew);
	FUNC3(ptr + 78, d->d_cylskew);
	FUNC4(ptr + 80, d->d_headswitch);
	FUNC4(ptr + 84, d->d_trkseek);
	FUNC4(ptr + 88, d->d_flags);
	FUNC4(ptr + 92, d->d_drivedata[0]);
	FUNC4(ptr + 96, d->d_drivedata[1]);
	FUNC4(ptr + 100, d->d_drivedata[2]);
	FUNC4(ptr + 104, d->d_drivedata[3]);
	FUNC4(ptr + 108, d->d_drivedata[4]);
	FUNC4(ptr + 112, d->d_spare[0]);
	FUNC4(ptr + 116, d->d_spare[1]);
	FUNC4(ptr + 120, d->d_spare[2]);
	FUNC4(ptr + 124, d->d_spare[3]);
	FUNC4(ptr + 128, d->d_spare[4]);
	FUNC4(ptr + 132, d->d_magic2);
	FUNC3(ptr + 136, 0);
	FUNC3(ptr + 138, d->d_npartitions);
	FUNC4(ptr + 140, d->d_bbsize);
	FUNC4(ptr + 144, d->d_sbsize);
	for (i = 0; i < d->d_npartitions; i++)
		FUNC1(ptr + 148 + 16 * i, &d->d_partitions[i]);
	pe = ptr + 148 + 16 * d->d_npartitions;
	sum = 0;
	for (p = ptr; p < pe; p += 2)
		sum ^= FUNC2(p);
	FUNC3(ptr + 136, sum);
}