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
struct mntarg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct mntarg* FUNC1 (struct mntarg*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct mntarg *
FUNC2(struct mntarg *ma, int flag, const char *name)
{

	FUNC0(name[0] == 'n' && name[1] == 'o',
	    ("mount_argb(...,%s): name must start with 'no'", name));

	return (FUNC1(ma, name + (flag ? 2 : 0), NULL, 0));
}