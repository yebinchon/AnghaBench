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
struct nfsnode {int n_flag; int /*<<< orphan*/  n_mtx; } ;

/* Variables and functions */
 int NDIRCOOKIELK ; 
 int /*<<< orphan*/  FUNC0 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  PZERO ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void 
FUNC3(struct nfsnode *np)
{
	FUNC0(np);
	while (np->n_flag & NDIRCOOKIELK)
		(void) FUNC2(&np->n_flag, &np->n_mtx, PZERO, "nfsdirlk", 0);
	np->n_flag |= NDIRCOOKIELK;
	FUNC1(np);
}