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
struct netmap_kring {int /*<<< orphan*/  nr_hwtail; int /*<<< orphan*/  rtail; int /*<<< orphan*/  rcur; int /*<<< orphan*/  rhead; int /*<<< orphan*/  nr_hwcur; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(const char *title, const struct netmap_kring *kring)
{
	FUNC0("%s, kring %s, hwcur %d, rhead %d, "
		"rcur %d, rtail %d, hwtail %d",
		title, kring->name, kring->nr_hwcur, kring->rhead,
		kring->rcur, kring->rtail, kring->nr_hwtail);
}