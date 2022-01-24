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
struct sc_pchinfo {int /*<<< orphan*/  ptr; struct sc_info* parent; } ;
struct sc_info {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*) ; 

__attribute__((used)) static u_int32_t
FUNC2(kobj_t kobj, void *chdata)
{
	struct sc_pchinfo *ch = chdata;
	struct sc_info *sc = ch->parent;
	u_int32_t ptr;

	FUNC0(sc);
	ptr = ch->ptr;
	FUNC1(sc);

	return (ptr);
}