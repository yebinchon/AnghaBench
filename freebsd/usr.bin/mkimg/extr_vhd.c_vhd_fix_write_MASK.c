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
typedef  int uint64_t ;
struct vhd_footer {int dummy; } ;
typedef  int /*<<< orphan*/  footer ;

/* Variables and functions */
 int /*<<< orphan*/  VHD_DISK_TYPE_FIXED ; 
 int errno ; 
 int FUNC0 (int) ; 
 int FUNC1 () ; 
 int secsz ; 
 scalar_t__ FUNC2 (int,struct vhd_footer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vhd_footer*,int,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static int
FUNC4(int fd)
{
	struct vhd_footer footer;
	uint64_t imagesz;
	int error;

	error = FUNC0(fd);
	if (error)
		return (error);

	imagesz = FUNC1() * secsz;
	FUNC3(&footer, imagesz, VHD_DISK_TYPE_FIXED, ~0ULL);
	error = (FUNC2(fd, &footer, sizeof(footer)) < 0) ? errno : 0;
	return (error);
}