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
struct ifnet {int dummy; } ;

/* Variables and functions */
 int PFLOGIFS_MAX ; 
 struct ifnet** V_pflogifs ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 

__attribute__((used)) static void
FUNC3(struct ifnet *ifp)
{
	int i;

	for (i = 0; i < PFLOGIFS_MAX; i++)
		if (V_pflogifs[i] == ifp)
			V_pflogifs[i] = NULL;

	FUNC0(ifp);
	FUNC1(ifp);
	FUNC2(ifp);
}