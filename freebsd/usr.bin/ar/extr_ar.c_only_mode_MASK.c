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
struct bsdar {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (struct bsdar*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bsdar *bsdar, const char *opt, const char *valid_modes)
{

	if (FUNC1(valid_modes, bsdar->mode) == NULL)
		FUNC0(bsdar, EX_USAGE, 0,
		    "Option %s is not permitted in mode -%c", opt, bsdar->mode);
}