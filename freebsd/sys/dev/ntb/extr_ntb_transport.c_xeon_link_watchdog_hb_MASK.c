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
struct ntb_transport_ctx {int /*<<< orphan*/  link_watchdog; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NTBT_WATCHDOG_SPAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),struct ntb_transport_ctx*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct ntb_transport_ctx *nt;

	nt = arg;
	FUNC1(nt->dev, NTBT_WATCHDOG_SPAD, 0);
	FUNC0(&nt->link_watchdog, 1 * hz, xeon_link_watchdog_hb, nt);
}