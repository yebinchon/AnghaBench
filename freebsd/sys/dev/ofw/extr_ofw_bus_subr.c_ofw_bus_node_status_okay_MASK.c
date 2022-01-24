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
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int OFW_STATUS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

int
FUNC3(phandle_t node)
{
	char status[OFW_STATUS_LEN];
	int len;

	len = FUNC1(node, "status");
	if (len <= 0)
		return (1);

	FUNC0(node, "status", status, OFW_STATUS_LEN);
	if ((len == 5 && (FUNC2(status, "okay", len) == 0)) ||
	    (len == 3 && (FUNC2(status, "ok", len))))
		return (1);

	return (0);
}