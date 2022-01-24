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
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(void)
{

	FUNC0(PF_INET, SOCK_DGRAM, 0);
	FUNC0(PF_INET, SOCK_STREAM, 0);
	FUNC0(PF_INET6, SOCK_DGRAM, 0);
	FUNC0(PF_INET6, SOCK_STREAM, 0);
	FUNC0(PF_LOCAL, SOCK_DGRAM, 0);
	FUNC0(PF_LOCAL, SOCK_STREAM, 0);

	return (0);
}