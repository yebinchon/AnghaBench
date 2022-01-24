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
struct itimer {scalar_t__ it_usecount; int it_flags; int /*<<< orphan*/  it_mtx; } ;

/* Variables and functions */
 int ITF_WANTED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct itimer*) ; 

__attribute__((used)) static void
FUNC3(struct itimer *it)
{

	FUNC1(&it->it_mtx, MA_OWNED);
	FUNC0(it->it_usecount > 0, ("invalid it_usecount"));

	if (--it->it_usecount == 0 && (it->it_flags & ITF_WANTED) != 0)
		FUNC2(it);
}