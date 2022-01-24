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
typedef  int /*<<< orphan*/  u32 ;
struct sdp_sock {int /*<<< orphan*/  recv_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 

int
FUNC2(struct sdp_sock *ssk, u32 new_size)
{

	ssk->recv_bytes = FUNC0(ssk, new_size);
	FUNC1(ssk);

	return 0;
}