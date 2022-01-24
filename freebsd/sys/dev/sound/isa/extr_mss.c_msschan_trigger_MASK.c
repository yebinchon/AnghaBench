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
struct mss_info {int dummy; } ;
struct mss_chinfo {int /*<<< orphan*/  buffer; struct mss_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mss_chinfo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(kobj_t obj, void *data, int go)
{
	struct mss_chinfo *ch = data;
	struct mss_info *mss = ch->parent;

	if (!FUNC0(go))
		return 0;

	FUNC4(ch->buffer, go);
	FUNC1(mss);
	FUNC2(ch, go);
	FUNC3(mss);
	return 0;
}