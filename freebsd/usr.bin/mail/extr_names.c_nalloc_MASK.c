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
struct name {int n_type; int /*<<< orphan*/  n_name; int /*<<< orphan*/ * n_blink; int /*<<< orphan*/ * n_flink; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

struct name *
FUNC2(char str[], int ntype)
{
	struct name *np;

	np = (struct name *)FUNC0(sizeof(*np));
	np->n_flink = NULL;
	np->n_blink = NULL;
	np->n_type = ntype;
	np->n_name = FUNC1(str);
	return (np);
}