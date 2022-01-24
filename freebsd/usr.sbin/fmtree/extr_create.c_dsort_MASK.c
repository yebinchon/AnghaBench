#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fts_name; TYPE_1__* fts_statp; } ;
struct TYPE_5__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_2__ FTSENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const FTSENT * const *a, const FTSENT * const *b)
{
	if (FUNC0((*a)->fts_statp->st_mode)) {
		if (!FUNC0((*b)->fts_statp->st_mode))
			return (1);
	} else if (FUNC0((*b)->fts_statp->st_mode))
		return (-1);
	return (FUNC1((*a)->fts_name, (*b)->fts_name));
}