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
struct in_mfilter {int dummy; } ;
struct in_addr {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct ifnet*,struct in_addr const*,struct in_mfilter*,struct in_multi**) ; 

int
FUNC3(struct ifnet *ifp, const struct in_addr *gina,
    /*const*/ struct in_mfilter *imf, struct in_multi **pinm)
{
	int error;

	FUNC0();
	error = FUNC2(ifp, gina, imf, pinm);
	FUNC1();

	return (error);
}