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
struct mntarg {int /*<<< orphan*/  error; int /*<<< orphan*/  list; } ;
struct mntaarg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MOUNT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mntaarg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void const*,char*,int,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 struct mntarg* FUNC4 (struct mntarg*,char const*,char*,int) ; 
 int /*<<< orphan*/  next ; 

struct mntarg *
FUNC5(struct mntarg *ma, const char *name, const void *val, int len)
{
	struct mntaarg *maa;
	char *tbuf;

	if (val == NULL)
		return (ma);
	if (ma == NULL) {
		ma = FUNC3(sizeof *ma, M_MOUNT, M_WAITOK | M_ZERO);
		FUNC0(&ma->list);
	}
	if (ma->error)
		return (ma);
	maa = FUNC3(sizeof *maa + len, M_MOUNT, M_WAITOK | M_ZERO);
	FUNC1(&ma->list, maa, next);
	tbuf = (void *)(maa + 1);
	ma->error = FUNC2(val, tbuf, len, NULL);
	return (FUNC4(ma, name, tbuf, -1));
}