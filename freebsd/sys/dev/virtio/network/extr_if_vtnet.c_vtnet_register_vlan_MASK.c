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
typedef  int /*<<< orphan*/  uint16_t ;
struct ifnet {void* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(void *arg, struct ifnet *ifp, uint16_t tag)
{

	if (ifp->if_softc != arg)
		return;

	FUNC0(arg, 1, tag);
}