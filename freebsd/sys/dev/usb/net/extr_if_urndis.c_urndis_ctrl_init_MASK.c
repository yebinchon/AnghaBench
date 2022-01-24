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
struct urndis_softc {int dummy; } ;
struct rndis_init_req {void* rm_max_xfersz; void* rm_ver_minor; void* rm_ver_major; void* rm_rid; void* rm_len; void* rm_type; } ;
struct rndis_comp_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int REMOTE_NDIS_INITIALIZE_MSG ; 
 int RNDIS_RX_MAXLEN ; 
 scalar_t__ RNDIS_STATUS_FAILURE ; 
 scalar_t__ RNDIS_STATUS_SUCCESS ; 
 int RNDIS_VERSION_MAJOR ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct urndis_softc*,struct rndis_comp_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rndis_comp_hdr* FUNC4 (struct urndis_softc*) ; 
 scalar_t__ FUNC5 (struct urndis_softc*,struct rndis_init_req*,int) ; 

__attribute__((used)) static uint32_t
FUNC6(struct urndis_softc *sc)
{
	struct rndis_init_req msg;
	struct rndis_comp_hdr *hdr;
	uint32_t rval;

	msg.rm_type = FUNC1(REMOTE_NDIS_INITIALIZE_MSG);
	msg.rm_len = FUNC1(sizeof(msg));
	msg.rm_rid = 0;
	msg.rm_ver_major = FUNC1(RNDIS_VERSION_MAJOR);
	msg.rm_ver_minor = FUNC1(1);
	msg.rm_max_xfersz = FUNC1(RNDIS_RX_MAXLEN);

	FUNC0("type %u len %u rid %u ver_major %u "
	    "ver_minor %u max_xfersz %u\n",
	    FUNC2(msg.rm_type),
	    FUNC2(msg.rm_len),
	    FUNC2(msg.rm_rid),
	    FUNC2(msg.rm_ver_major),
	    FUNC2(msg.rm_ver_minor),
	    FUNC2(msg.rm_max_xfersz));

	rval = FUNC5(sc, &msg, sizeof(msg));

	if (rval != RNDIS_STATUS_SUCCESS) {
		FUNC0("init failed\n");
		return (rval);
	}
	if ((hdr = FUNC4(sc)) == NULL) {
		FUNC0("unable to get init response\n");
		return (RNDIS_STATUS_FAILURE);
	}
	rval = FUNC3(sc, hdr, NULL, NULL);

	return (rval);
}