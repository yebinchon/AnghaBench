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
typedef  int u_int ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  M_IFNET ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int V_if_indexlim ; 
 struct ifnet** V_ifindex_table ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet**,int /*<<< orphan*/ ) ; 
 struct ifnet** FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void *
FUNC6(void)
{
	int oldlim;
	u_int n;
	struct ifnet **e;
	void *old;

	old = NULL;
	FUNC1();
	oldlim = V_if_indexlim;
	FUNC2();
	n = (oldlim << 1) * sizeof(*e);
	e = FUNC4(n, M_IFNET, M_WAITOK | M_ZERO);
	FUNC0();
	if (V_if_indexlim != oldlim) {
		FUNC3(e, M_IFNET);
		return (NULL);
	}
	if (V_ifindex_table != NULL) {
		FUNC5((caddr_t)e, (caddr_t)V_ifindex_table, n/2);
		old = V_ifindex_table;
	}
	V_if_indexlim <<= 1;
	V_ifindex_table = e;
	return (old);
}