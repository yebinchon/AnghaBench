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
struct ath_ratestats {int /*<<< orphan*/  re; int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGATHNODERATESTATS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct ath_ratestats *r)
{

	if (FUNC1(r->s, SIOCGATHNODERATESTATS, &r->re) < 0)
		FUNC0(1, "ioctl");
}