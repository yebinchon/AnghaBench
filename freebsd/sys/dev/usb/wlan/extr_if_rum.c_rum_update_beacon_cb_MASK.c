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
union sec_param {struct ieee80211vap* vap; } ;
typedef  int /*<<< orphan*/  uint8_t ;
struct rum_softc {int dummy; } ;
struct ieee80211vap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rum_softc*,struct ieee80211vap*) ; 

__attribute__((used)) static void
FUNC1(struct rum_softc *sc, union sec_param *data,
    uint8_t rvp_id)
{
	struct ieee80211vap *vap = data->vap;

	FUNC0(sc, vap);
}