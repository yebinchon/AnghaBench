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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ess_info {int dummy; } ;
struct ess_chinfo {int /*<<< orphan*/  hwch; struct ess_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ess_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ess_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ess_info*) ; 

__attribute__((used)) static u_int32_t
FUNC3(kobj_t obj, void *data)
{
	struct ess_chinfo *ch = data;
	struct ess_info *sc = ch->parent;
	u_int32_t ret;

	FUNC1(sc);
	ret = FUNC0(sc, ch->hwch);
	FUNC2(sc);
	return ret;
}