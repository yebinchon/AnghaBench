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
struct in_multi {int dummy; } ;
struct in_addr {int dummy; } ;
struct ifnet {int dummy; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 struct in_multi* FUNC3 (struct ifnet*,struct in_addr const) ; 

struct in_multi *
FUNC4(struct ifnet *ifp, const struct in_addr ina)
{
	struct epoch_tracker et;
	struct in_multi *inm;

	FUNC0();
	FUNC1(et);

	inm = FUNC3(ifp, ina);
	FUNC2(et);

	return (inm);
}