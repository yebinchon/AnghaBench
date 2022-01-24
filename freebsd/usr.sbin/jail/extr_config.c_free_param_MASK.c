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
struct cfparams {int dummy; } ;
struct cfparam {struct cfparam* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfparams*,struct cfparam*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cfparam*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfparam*) ; 
 int /*<<< orphan*/  tq ; 

__attribute__((used)) static void
FUNC3(struct cfparams *pp, struct cfparam *p)
{
	FUNC1(p->name);
	FUNC2(p);
	FUNC0(pp, p, tq);
	FUNC1(p);
}