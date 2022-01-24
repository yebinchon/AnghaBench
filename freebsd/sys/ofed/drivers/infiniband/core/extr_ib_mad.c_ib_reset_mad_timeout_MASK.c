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
struct ib_mad_send_wr_private {int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mad_send_wr_private*) ; 

void FUNC2(struct ib_mad_send_wr_private *mad_send_wr,
			  int timeout_ms)
{
	mad_send_wr->timeout = FUNC0(timeout_ms);
	FUNC1(mad_send_wr);
}