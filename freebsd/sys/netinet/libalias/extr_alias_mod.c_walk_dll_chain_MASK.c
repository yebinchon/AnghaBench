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
struct dll {int dummy; } ;

/* Variables and functions */
 struct dll* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dll_chain ; 
 int /*<<< orphan*/  next ; 

struct dll *
FUNC2(void)
{
	struct dll *t;

	t = FUNC0(&dll_chain);
	if (t == NULL)
		return (NULL);
	FUNC1(&dll_chain, next);
	return (t);
}