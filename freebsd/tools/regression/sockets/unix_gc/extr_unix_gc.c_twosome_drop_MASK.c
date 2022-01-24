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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 

__attribute__((used)) static void
FUNC1(void)
{

	/*
	 * In various combations, some wastefully symmetric, create socket
	 * pairs and send one or another endpoint over one or another
	 * endpoint, closing the endpoints in various orders.
	 */
	FUNC0("twosome_drop1", 0, 0, 0);
	FUNC0("twosome_drop2", 0, 0, 1);
	FUNC0("twosome_drop3", 0, 1, 0);
	FUNC0("twosome_drop4", 0, 1, 1);
	FUNC0("twosome_drop5", 1, 0, 0);
	FUNC0("twosome_drop6", 1, 0, 1);
	FUNC0("twosome_drop7", 1, 1, 0);
	FUNC0("twosome_drop8", 1, 1, 1);
}