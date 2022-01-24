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
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*) ; 

__attribute__((used)) static void FUNC9(struct ecore_hwfn *p_hwfn)
{
	/* rate limited pqs, must come first (FW assumption) */
	FUNC7(p_hwfn);

	/* pqs for multi cos */
	FUNC3(p_hwfn);

	/* pure loopback pq */
	FUNC1(p_hwfn);

	/* out of order pq */
	FUNC5(p_hwfn);

	/* pure ack pq */
	FUNC6(p_hwfn);

	/* pq for offloaded protocol */
	FUNC4(p_hwfn);

	/* low latency pq */
	FUNC2(p_hwfn);

	/* done sharing vports */
	FUNC0(p_hwfn);

	/* pqs for vfs */
	FUNC8(p_hwfn);
}