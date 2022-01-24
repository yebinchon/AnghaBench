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
struct sockaddr {int /*<<< orphan*/  sa_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr const*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 struct sockaddr* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct sockaddr *
FUNC2(const struct sockaddr *sa, int mflags)
{
	struct sockaddr *sa2;

	sa2 = FUNC1(sa->sa_len, M_SONAME, mflags);
	if (sa2)
		FUNC0(sa, sa2, sa->sa_len);
	return sa2;
}