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
struct fb_list_entry {struct fb_info* fb_info; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fb_list_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC2 (struct fb_list_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fb_list ; 
 int /*<<< orphan*/  fb_list_head ; 
 struct fb_list_entry* FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  framebuffer_dev_unit ; 
 struct fb_list_entry* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct fb_info*) ; 

int
FUNC6(struct fb_info* info)
{
	struct fb_list_entry *entry;
	int err, first;

	first = 0;
	if (FUNC0(&fb_list_head))
		first++;

	entry = FUNC3(info);
	if (entry != NULL) {
		/* XXX Update framebuffer params */
		return (0);
	}

	entry = FUNC4(sizeof(struct fb_list_entry), M_DEVBUF, M_WAITOK|M_ZERO);
	entry->fb_info = info;

	FUNC1(&fb_list_head, entry, fb_list);

	err = FUNC2(entry, framebuffer_dev_unit++);
	if (err)
		return (err);

	if (first) {
		err = FUNC5(info);
		if (err)
			return (err);
	}

	return (0);
}