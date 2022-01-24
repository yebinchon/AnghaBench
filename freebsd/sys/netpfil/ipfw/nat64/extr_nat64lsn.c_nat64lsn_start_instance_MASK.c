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
struct nat64lsn_cfg {int /*<<< orphan*/  periodic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nat64lsn_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (struct nat64lsn_cfg*) ; 
 int PERIODIC_DELAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct nat64lsn_cfg*) ; 
 int hz ; 
 int /*<<< orphan*/  nat64lsn_periodic ; 

void
FUNC3(struct nat64lsn_cfg *cfg)
{

	FUNC0(cfg);
	FUNC2(&cfg->periodic, hz * PERIODIC_DELAY,
	    nat64lsn_periodic, cfg);
	FUNC1(cfg);
}