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
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct cbcp {scalar_t__ required; TYPE_1__ fsm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CBCP_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct cbcp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct cbcp *cbcp)
{
  FUNC1(&cbcp->fsm.timer);
  FUNC0(cbcp, CBCP_CLOSED);
  cbcp->required = 0;
}