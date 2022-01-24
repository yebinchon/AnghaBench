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
typedef  int /*<<< orphan*/  hcb_p ;

/* Variables and functions */
 int /*<<< orphan*/  HS_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (hcb_p np)
{
	FUNC0 ("%s: unexpected disconnect\n", FUNC1(np));
	FUNC2(np, HS_UNEXPECTED);
}