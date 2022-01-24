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
struct nptv6_cfg {int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int /*<<< orphan*/  NPTV6STATS ; 
 int /*<<< orphan*/  FUNC1 (struct nptv6_cfg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct nptv6_cfg *cfg)
{

	FUNC0(cfg->stats, NPTV6STATS);
	FUNC1(cfg, M_IPFW);
}