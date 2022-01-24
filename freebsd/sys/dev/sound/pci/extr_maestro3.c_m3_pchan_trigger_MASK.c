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
struct sc_pchinfo {struct sc_info* parent; } ;
struct sc_info {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int
FUNC4(kobj_t kobj, void *chdata, int go)
{
	struct sc_pchinfo *ch = chdata;
	struct sc_info *sc = ch->parent;
	int ret;

	if (!FUNC2(go))
		return (0);

	FUNC0(sc);
	ret = FUNC3(kobj, chdata, go);
	FUNC1(sc);

	return (ret);
}