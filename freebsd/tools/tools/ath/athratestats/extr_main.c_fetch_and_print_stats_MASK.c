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
struct ether_addr {int /*<<< orphan*/  octet; } ;
struct ath_ratestats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATS_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_ratestats*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_ratestats*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_ratestats*,struct ether_addr*) ; 

__attribute__((used)) static void
FUNC4(struct ath_ratestats *r, struct ether_addr *e,
    uint8_t *buf)
{

	/* Zero the buffer before it's passed in */
	FUNC2(buf, '\0', STATS_BUF_SIZE);

	/*
	 * Set the station address for this lookup.
	 */
	FUNC1(r, e->octet);

	/*
	 * Fetch the data from the driver.
	 */
	FUNC0(r);

	/*
	 * Decode and parse statistics.
	 */
	FUNC3(r, e);
}