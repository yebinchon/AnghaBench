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
struct TYPE_2__ {int /*<<< orphan*/  kidx; } ;
struct nat64stl_cfg {int /*<<< orphan*/  map64; int /*<<< orphan*/  map46; TYPE_1__ no; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_fw_chain*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ip_fw_chain *ch, struct nat64stl_cfg *cfg)
{

	FUNC1(ch);

	FUNC2(FUNC0(ch), &cfg->no);
	FUNC3(FUNC0(ch), cfg->no.kidx);
	FUNC4(ch, cfg->map46);
	FUNC4(ch, cfg->map64);
}