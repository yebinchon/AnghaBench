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
struct mss_info {int dummy; } ;
struct mss_chinfo {struct mss_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct mss_chinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mss_info*) ; 

__attribute__((used)) static u_int32_t
FUNC3(kobj_t obj, void *data, u_int32_t speed)
{
	struct mss_chinfo *ch = data;
	struct mss_info *mss = ch->parent;
	u_int32_t r;

	FUNC0(mss);
	r = FUNC1(ch, speed);
	FUNC2(mss);

	return r;
}