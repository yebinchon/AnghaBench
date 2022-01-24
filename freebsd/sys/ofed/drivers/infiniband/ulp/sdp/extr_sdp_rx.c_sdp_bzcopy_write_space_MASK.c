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
struct sdp_sock {scalar_t__ min_bufs; struct socket* socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 scalar_t__ FUNC1 (struct sdp_sock*) ; 

__attribute__((used)) static void
FUNC2(struct sdp_sock *ssk)
{
	struct socket *sk = ssk->socket;

	if (FUNC1(ssk) >= ssk->min_bufs && sk)
		FUNC0(sk);
}