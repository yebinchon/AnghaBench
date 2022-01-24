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
struct netfront_info {int /*<<< orphan*/  sc_media; int /*<<< orphan*/ * xn_ifp; int /*<<< orphan*/  txq; int /*<<< orphan*/  rxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct netfront_info*) ; 

__attribute__((used)) static void
FUNC8(struct netfront_info *np)
{

	FUNC0(np);
	FUNC7(np);
	FUNC1(np);
	FUNC6(np);
	FUNC2(np->xn_ifp);
	FUNC3(np->rxq, M_DEVBUF);
	FUNC3(np->txq, M_DEVBUF);
	FUNC4(np->xn_ifp);
	np->xn_ifp = NULL;
	FUNC5(&np->sc_media);
}