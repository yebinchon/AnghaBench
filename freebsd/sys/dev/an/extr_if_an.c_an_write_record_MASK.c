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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct TYPE_2__ {int /*<<< orphan*/  an_dma_vaddr; int /*<<< orphan*/  an_dma_paddr; } ;
struct an_softc {int /*<<< orphan*/  an_ifp; TYPE_1__ an_rid_buffer; int /*<<< orphan*/  mpi350; } ;
struct an_reply {int an_cmd; int an_status; int /*<<< orphan*/  an_resp2; int /*<<< orphan*/  an_resp1; int /*<<< orphan*/  an_resp0; int /*<<< orphan*/  an_parm0; } ;
struct an_ltv_gen {int an_len; int /*<<< orphan*/  an_type; int /*<<< orphan*/  an_val; } ;
struct an_command {int an_cmd; int an_status; int /*<<< orphan*/  an_resp2; int /*<<< orphan*/  an_resp1; int /*<<< orphan*/  an_resp0; int /*<<< orphan*/  an_parm0; } ;
struct an_card_rid_desc {int an_valid; int an_len; int /*<<< orphan*/  an_phys; int /*<<< orphan*/  an_rid; } ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  an_rid_desc ;

/* Variables and functions */
 int AN_ACCESS_READ ; 
 int AN_ACCESS_WRITE ; 
 int /*<<< orphan*/  AN_BAP1 ; 
 int AN_CMD_ACCESS ; 
 int AN_CMD_BUSY ; 
 int AN_CMD_QUAL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AN_DATA0 ; 
 int /*<<< orphan*/  AN_DATA1 ; 
 scalar_t__ AN_HOST_DESC_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*) ; 
 int AN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct an_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct an_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct an_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int EIO ; 
 scalar_t__ FUNC7 (struct an_softc*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct an_softc*,struct an_reply*,struct an_reply*) ; 
 scalar_t__ an_dump ; 
 int /*<<< orphan*/  FUNC9 (struct an_softc*,struct an_ltv_gen*,char*) ; 
 scalar_t__ FUNC10 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct an_reply*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int
FUNC15(struct an_softc *sc, struct an_ltv_gen *ltv)
{
	struct an_card_rid_desc an_rid_desc;
	struct an_command	cmd;
	struct an_reply		reply;
	u_int16_t		*ptr;
	u_int8_t		*ptr2;
	int			i, len;

	FUNC1(sc);
	if (an_dump)
		FUNC9(sc, ltv, "Write");

	if (!sc->mpi350){
		if (FUNC7(sc, AN_CMD_ACCESS|AN_ACCESS_READ, ltv->an_type))
			return(EIO);

		if (FUNC10(sc, ltv->an_type, 0, AN_BAP1))
			return(EIO);

		/*
		 * Length includes type but not length.
		 */
		len = ltv->an_len - 2;
		FUNC5(sc, AN_DATA1, len);

		len -= 2;	/* skip the type */
		ptr = &ltv->an_val;
		for (i = len; i > 1; i -= 2)
			FUNC5(sc, AN_DATA1, *ptr++);
		if (i) {
			ptr2 = (u_int8_t *)ptr;
			FUNC4(sc, AN_DATA0, *ptr2);
		}

		if (FUNC7(sc, AN_CMD_ACCESS|AN_ACCESS_WRITE, ltv->an_type))
			return(EIO);
	} else {
		/* MPI-350 */

		for (i = 0; i != AN_TIMEOUT; i++) {
			if (FUNC3(sc, FUNC0(sc->mpi350))
			    & AN_CMD_BUSY) {
				FUNC6(10);
			} else
				break;
		}
		if (i == AN_TIMEOUT) {
			FUNC14("BUSY\n");
		}

		an_rid_desc.an_valid = 1;
		an_rid_desc.an_len = ltv->an_len - 2;
		an_rid_desc.an_rid = ltv->an_type;
		an_rid_desc.an_phys = sc->an_rid_buffer.an_dma_paddr;

		FUNC11(&ltv->an_type, sc->an_rid_buffer.an_dma_vaddr,
		      an_rid_desc.an_len);

		FUNC12(&cmd,sizeof(cmd));
		FUNC12(&reply,sizeof(reply));
		cmd.an_cmd = AN_CMD_ACCESS|AN_ACCESS_WRITE;
		cmd.an_parm0 = ltv->an_type;

		for (i = 0; i < sizeof(an_rid_desc) / 4; i++)
			FUNC2(sc, AN_HOST_DESC_OFFSET + i * 4,
			    ((u_int32_t *)(void *)&an_rid_desc)[i]);

		FUNC6(100000);

		if ((i = FUNC8(sc, &cmd, &reply))) {
			FUNC13(sc->an_ifp,
			    "failed to write RID 1 %x %x %x %x %x, %d\n",
			    ltv->an_type,
			    reply.an_status,
			    reply.an_resp0,
			    reply.an_resp1,
			    reply.an_resp2,
			    i);
			return(EIO);
		}


		if (reply.an_status & AN_CMD_QUAL_MASK) {
			FUNC13(sc->an_ifp,
			    "failed to write RID 2 %x %x %x %x %x, %d\n",
			    ltv->an_type,
			    reply.an_status,
			    reply.an_resp0,
			    reply.an_resp1,
			    reply.an_resp2,
			    i);
			return(EIO);
		}
		FUNC6(100000);
	}

	return(0);
}