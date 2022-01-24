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
struct nd_prefixctl {int dummy; } ;
struct nd_prefix {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct nd_prefix* FUNC2 (struct nd_prefixctl*) ; 

struct nd_prefix *
FUNC3(struct nd_prefixctl *key)
{
	struct nd_prefix *search;

	FUNC0();
	search = FUNC2(key);
	FUNC1();
	return (search);
}