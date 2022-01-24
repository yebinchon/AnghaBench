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
struct uio {int /*<<< orphan*/  uio_offset; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FOF_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ ,int) ; 

void
FUNC1(struct file *fp, struct uio *uio, int flags)
{

	if ((flags & FOF_OFFSET) == 0)
		FUNC0(fp, uio->uio_offset, flags);
}