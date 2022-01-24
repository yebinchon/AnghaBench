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
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,struct sockaddr_in6*) ; 
 struct sockaddr_in6* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct sockaddr **nam)
{
	struct sockaddr_in *sin_p;
	struct sockaddr_in6 *sin6_p;

	sin6_p = FUNC2(sizeof *sin6_p, M_SONAME, M_WAITOK);
	sin_p = (struct sockaddr_in *)*nam;
	FUNC1(sin_p, sin6_p);
	FUNC0(*nam, M_SONAME);
	*nam = (struct sockaddr *)sin6_p;
}