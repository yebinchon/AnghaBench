#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_1__* sk_socket; } ;
struct sdp_sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdp_sock*) ; 
 struct sdp_sock* FUNC3 (struct socket*) ; 
 int FUNC4 (struct sdp_sock*,long*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdp_sock*,int) ; 
 int /*<<< orphan*/  send_wait_for_mem ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC7(struct socket *sk, long *timeo_p)
{
	struct sdp_sock *ssk = FUNC3(sk);
	int ret = 0;
	int credits_needed = 1;

	FUNC1(sk, "Wait for mem\n");

	FUNC6(SOCK_NOSPACE, &sk->sk_socket->flags);

	FUNC0(send_wait_for_mem);

	FUNC2(ssk);

	FUNC5(ssk, 1);

	ret = FUNC4(ssk, timeo_p, &credits_needed);

	return ret;
}