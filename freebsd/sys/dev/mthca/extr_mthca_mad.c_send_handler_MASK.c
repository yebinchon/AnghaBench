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
struct ib_mad_send_wc {int /*<<< orphan*/  send_buf; } ;
struct ib_mad_agent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ib_mad_agent *agent,
			 struct ib_mad_send_wc *mad_send_wc)
{
	FUNC0(mad_send_wc->send_buf);
}