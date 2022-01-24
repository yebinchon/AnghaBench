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
struct ip_fw_chain {int n_rules; struct ip_fw** map; int /*<<< orphan*/  id; } ;
struct ip_fw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_fw_chain*) ; 

__attribute__((used)) static struct ip_fw **
FUNC3(struct ip_fw_chain *chain, struct ip_fw **new_map, int new_len)
{
	struct ip_fw **old_map;

	FUNC0(chain);
	chain->id++;
	chain->n_rules = new_len;
	old_map = chain->map;
	chain->map = new_map;
	FUNC2(chain);
	FUNC1(chain);
	return old_map;
}