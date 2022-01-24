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
struct ieee80211vap {scalar_t__ iv_opmode; int /*<<< orphan*/  iv_myaddr; } ;
struct ieee80211_frame {int /*<<< orphan*/  i_addr3; int /*<<< orphan*/  i_addr1; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_M_STA ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static __inline int
FUNC3(struct ieee80211vap *vap, const struct ieee80211_frame *wh)
{
	FUNC2(vap->iv_opmode == IEEE80211_M_STA, ("wrong mode"));

	if (!FUNC1(wh->i_addr1))
		return 0;
	return FUNC0(wh->i_addr3, vap->iv_myaddr);
}