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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test ; 

__attribute__((used)) static void
FUNC2(int s, struct sockaddr *sa, socklen_t *salen)
{

	if (FUNC1(s, sa, salen) < 0)
		FUNC0(-1, "%s: getsockname", test);
}