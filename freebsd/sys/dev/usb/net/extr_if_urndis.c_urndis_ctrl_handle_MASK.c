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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  ue_dev; } ;
struct urndis_softc {TYPE_1__ sc_ue; } ;
struct rndis_comp_hdr {int /*<<< orphan*/  rm_type; int /*<<< orphan*/  rm_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  REMOTE_NDIS_INITIALIZE_CMPLT 132 
#define  REMOTE_NDIS_KEEPALIVE_CMPLT 131 
#define  REMOTE_NDIS_QUERY_CMPLT 130 
#define  REMOTE_NDIS_RESET_CMPLT 129 
#define  REMOTE_NDIS_SET_CMPLT 128 
 int RNDIS_STATUS_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct urndis_softc*,struct rndis_comp_hdr*) ; 
 int FUNC4 (struct urndis_softc*,struct rndis_comp_hdr*,void const**,scalar_t__*) ; 
 int FUNC5 (struct urndis_softc*,struct rndis_comp_hdr*) ; 

__attribute__((used)) static uint32_t
FUNC6(struct urndis_softc *sc, struct rndis_comp_hdr *hdr,
    const void **buf, uint16_t *bufsz)
{
	uint32_t rval;

	FUNC0("\n");

	if (buf != NULL && bufsz != NULL) {
		*buf = NULL;
		*bufsz = 0;
	}
	switch (FUNC2(hdr->rm_type)) {
	case REMOTE_NDIS_INITIALIZE_CMPLT:
		rval = FUNC3(sc, hdr);
		break;

	case REMOTE_NDIS_QUERY_CMPLT:
		rval = FUNC4(sc, hdr, buf, bufsz);
		break;

	case REMOTE_NDIS_RESET_CMPLT:
		rval = FUNC5(sc, hdr);
		break;

	case REMOTE_NDIS_KEEPALIVE_CMPLT:
	case REMOTE_NDIS_SET_CMPLT:
		rval = FUNC2(hdr->rm_status);
		break;

	default:
		FUNC1(sc->sc_ue.ue_dev,
		    "ctrl message error: unknown event 0x%x\n",
		    FUNC2(hdr->rm_type));
		rval = RNDIS_STATUS_FAILURE;
		break;
	}
	return (rval);
}