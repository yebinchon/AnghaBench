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
struct sdp_sock {int /*<<< orphan*/  keep2msl; int /*<<< orphan*/  socket; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  TCPS_TIME_WAIT ; 
 int /*<<< orphan*/  TCPTV_MSL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sdp_sock*) ; 
 int /*<<< orphan*/  sdp_2msl_timeout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct sdp_sock *ssk)
{

	FUNC0(ssk);
	ssk->flags |= SDP_TIMEWAIT;
	ssk->state = TCPS_TIME_WAIT;
	FUNC2(ssk->socket);
	FUNC1(&ssk->keep2msl, TCPTV_MSL, sdp_2msl_timeout, ssk);
}