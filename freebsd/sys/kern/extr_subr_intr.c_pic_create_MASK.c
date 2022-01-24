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
struct intr_pic {intptr_t pic_xref; int pic_flags; int /*<<< orphan*/  pic_child_lock; int /*<<< orphan*/  pic_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  M_INTRNG ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct intr_pic*,int /*<<< orphan*/ ) ; 
 struct intr_pic* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pic_list ; 
 int /*<<< orphan*/  pic_list_lock ; 
 struct intr_pic* FUNC5 (int /*<<< orphan*/ ,intptr_t,int) ; 
 int /*<<< orphan*/  pic_next ; 

__attribute__((used)) static struct intr_pic *
FUNC6(device_t dev, intptr_t xref, int flags)
{
	struct intr_pic *pic;

	FUNC3(&pic_list_lock);
	pic = FUNC5(dev, xref, flags);
	if (pic != NULL) {
		FUNC4(&pic_list_lock);
		return (pic);
	}
	pic = FUNC1(sizeof(*pic), M_INTRNG, M_NOWAIT | M_ZERO);
	if (pic == NULL) {
		FUNC4(&pic_list_lock);
		return (NULL);
	}
	pic->pic_xref = xref;
	pic->pic_dev = dev;
	pic->pic_flags = flags;
	FUNC2(&pic->pic_child_lock, "pic child lock", NULL, MTX_SPIN);
	FUNC0(&pic_list, pic, pic_next);
	FUNC4(&pic_list_lock);

	return (pic);
}