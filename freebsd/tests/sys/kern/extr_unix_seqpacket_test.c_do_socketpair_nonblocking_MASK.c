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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC4(int *sv)
{
	int s;

	s = FUNC3(PF_LOCAL, SOCK_SEQPACKET, 0, sv);
	FUNC1(0, s);
	FUNC0(sv[0] >= 0);
	FUNC0(sv[1] >= 0);
	FUNC0(sv[0] != sv[1]);
	FUNC0(-1 != FUNC2(sv[0], F_SETFL, O_NONBLOCK));
	FUNC0(-1 != FUNC2(sv[1], F_SETFL, O_NONBLOCK));
}