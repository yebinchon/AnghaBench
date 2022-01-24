#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ fts_info; int /*<<< orphan*/  fts_name; } ;
typedef  TYPE_1__ FTSENT ;

/* Variables and functions */
 scalar_t__ FTS_D ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const FTSENT *const *a, const FTSENT *const *b)
{

	if ((*a)->fts_info == FTS_D && (*b)->fts_info != FTS_D)
		return (1);
	if ((*a)->fts_info != FTS_D && (*b)->fts_info == FTS_D)
		return (-1);
	return (FUNC0((*a)->fts_name, (*b)->fts_name));
}