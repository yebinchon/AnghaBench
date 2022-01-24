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
struct nfsnode {int /*<<< orphan*/  n_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDIRCOOKIELK ; 
 int /*<<< orphan*/  FUNC0 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void 
FUNC3(struct nfsnode *np)
{
	FUNC0(np);
	np->n_flag &= ~NDIRCOOKIELK;
	FUNC2(&np->n_flag);
	FUNC1(np);
}