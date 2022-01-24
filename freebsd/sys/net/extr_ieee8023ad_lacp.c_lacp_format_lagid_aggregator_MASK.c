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
struct lacp_aggregator {int /*<<< orphan*/  la_partner; int /*<<< orphan*/  la_actor; } ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,size_t) ; 

const char *
FUNC1(const struct lacp_aggregator *la,
    char *buf, size_t buflen)
{
	if (la == NULL) {
		return ("(none)");
	}

	return (FUNC0(&la->la_actor, &la->la_partner, buf, buflen));
}