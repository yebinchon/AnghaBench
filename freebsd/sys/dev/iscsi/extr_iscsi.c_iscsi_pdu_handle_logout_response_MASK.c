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
struct icl_pdu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC2 (struct icl_pdu*) ; 

__attribute__((used)) static void
FUNC3(struct icl_pdu *response)
{

	FUNC0(FUNC1(response), "logout response");
	FUNC2(response);
}