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
struct socket {int dummy; } ;
struct sdp_sock {int /*<<< orphan*/  keep2msl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sdp_sock* FUNC1 (struct socket*) ; 

__attribute__((used)) static void
FUNC2(struct socket *so)
{
	struct sdp_sock *ssk;

	ssk = FUNC1(so);
	FUNC0(&ssk->keep2msl);
}