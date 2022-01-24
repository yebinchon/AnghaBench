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
typedef  int /*<<< orphan*/  uint32_t ;
struct bhnd_chipid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bhnd_chipid const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

uint32_t
FUNC3(const struct bhnd_chipid *cid,
    uint32_t pll_type, uint32_t n, uint32_t m)
{
	FUNC0(FUNC2(cid, pll_type, NULL) != 0,
	    ("can't compute clock rate on fixed clock"));

	return (FUNC1(pll_type, n, m));
}