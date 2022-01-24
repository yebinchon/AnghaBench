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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ieee80211_channel {int /*<<< orphan*/  ic_maxregpower; int /*<<< orphan*/  ic_ieee; int /*<<< orphan*/  ic_freq; int /*<<< orphan*/  ic_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *p, const struct ieee80211_channel *c)
{
	struct {
		uint32_t	flags;
		uint16_t	freq;
		uint8_t		ieee;
		uint8_t		maxpow;
	} *rc = p;

	rc->flags = FUNC1(c->ic_flags);
	rc->freq = FUNC0(c->ic_freq);
	rc->ieee = c->ic_ieee;
	rc->maxpow = c->ic_maxregpower;
}