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
struct ubt_softc {int dummy; } ;
typedef  int /*<<< orphan*/  hook_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ubt_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UBT_FLAG_T_START_ALL ; 
 int /*<<< orphan*/  FUNC4 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubt_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(hook_p hook)
{
	struct ubt_softc	*sc = FUNC3(FUNC1(hook));

	FUNC0(FUNC2(hook));

	FUNC4(sc);
	FUNC6(sc, UBT_FLAG_T_START_ALL);
	FUNC5(sc);

	return (0);
}