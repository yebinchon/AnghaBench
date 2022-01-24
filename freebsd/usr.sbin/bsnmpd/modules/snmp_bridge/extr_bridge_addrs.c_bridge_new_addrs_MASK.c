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
typedef  int /*<<< orphan*/  uint8_t ;
struct tp_entry {int /*<<< orphan*/  tp_addr; int /*<<< orphan*/  sysindex; } ;
struct bridge_if {int /*<<< orphan*/  f_tpa; int /*<<< orphan*/  sysindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tp_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tp_entry*,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tp_entries ; 

struct tp_entry *
FUNC6(uint8_t *mac, struct bridge_if *bif)
{
	struct tp_entry *te;

	if ((te = (struct tp_entry *) FUNC3(sizeof(*te))) == NULL) {
		FUNC5(LOG_ERR, "bridge new address: failed: %s",
		    FUNC4(errno));
		return (NULL);
	}

	FUNC2(te, sizeof(*te));

	te->sysindex = bif->sysindex;
	FUNC0(mac, te->tp_addr, ETHER_ADDR_LEN);
	FUNC1(&tp_entries, te, &(bif->f_tpa));

	return (te);
}