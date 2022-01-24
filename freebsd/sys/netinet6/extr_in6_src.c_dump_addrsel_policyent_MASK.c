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
struct walkarg {int /*<<< orphan*/  w_req; } ;
struct in6_addrpolicy {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct in6_addrpolicy*,int) ; 

__attribute__((used)) static int
FUNC1(struct in6_addrpolicy *pol, void *arg)
{
	int error = 0;
	struct walkarg *w = arg;

	error = FUNC0(w->w_req, pol, sizeof(*pol));

	return (error);
}