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
typedef  scalar_t__ uint32_t ;
struct urndis_softc {scalar_t__ sc_lim_pktsz; } ;
struct rndis_init_comp {int /*<<< orphan*/  rm_status; int /*<<< orphan*/  rm_pktmaxsz; int /*<<< orphan*/  rm_medium; int /*<<< orphan*/  rm_devflags; int /*<<< orphan*/  rm_aflistsz; int /*<<< orphan*/  rm_aflistoffset; int /*<<< orphan*/  rm_align; int /*<<< orphan*/  rm_pktmaxcnt; int /*<<< orphan*/  rm_ver_minor; int /*<<< orphan*/  rm_ver_major; int /*<<< orphan*/  rm_rid; int /*<<< orphan*/  rm_len; } ;
struct rndis_comp_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 scalar_t__ RNDIS_DF_CONNECTIONLESS ; 
 scalar_t__ RNDIS_MEDIUM_802_3 ; 
 scalar_t__ RNDIS_STATUS_FAILURE ; 
 scalar_t__ RNDIS_STATUS_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(struct urndis_softc *sc,
    const struct rndis_comp_hdr *hdr)
{
	const struct rndis_init_comp *msg;

	msg = (const struct rndis_init_comp *)hdr;

	FUNC0("len %u rid %u status 0x%x "
	    "ver_major %u ver_minor %u devflags 0x%x medium 0x%x pktmaxcnt %u "
	    "pktmaxsz %u align %u aflistoffset %u aflistsz %u\n",
	    FUNC1(msg->rm_len),
	    FUNC1(msg->rm_rid),
	    FUNC1(msg->rm_status),
	    FUNC1(msg->rm_ver_major),
	    FUNC1(msg->rm_ver_minor),
	    FUNC1(msg->rm_devflags),
	    FUNC1(msg->rm_medium),
	    FUNC1(msg->rm_pktmaxcnt),
	    FUNC1(msg->rm_pktmaxsz),
	    FUNC1(msg->rm_align),
	    FUNC1(msg->rm_aflistoffset),
	    FUNC1(msg->rm_aflistsz));

	if (FUNC1(msg->rm_status) != RNDIS_STATUS_SUCCESS) {
		FUNC0("init failed 0x%x\n", FUNC1(msg->rm_status));
		return (FUNC1(msg->rm_status));
	}
	if (FUNC1(msg->rm_devflags) != RNDIS_DF_CONNECTIONLESS) {
		FUNC0("wrong device type (current type: 0x%x)\n",
		    FUNC1(msg->rm_devflags));
		return (RNDIS_STATUS_FAILURE);
	}
	if (FUNC1(msg->rm_medium) != RNDIS_MEDIUM_802_3) {
		FUNC0("medium not 802.3 (current medium: 0x%x)\n",
		    FUNC1(msg->rm_medium));
		return (RNDIS_STATUS_FAILURE);
	}
	sc->sc_lim_pktsz = FUNC1(msg->rm_pktmaxsz);

	return (FUNC1(msg->rm_status));
}