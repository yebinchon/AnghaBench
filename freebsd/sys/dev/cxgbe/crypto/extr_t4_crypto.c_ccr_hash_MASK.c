#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ u_int ;
struct wrqe {int dummy; } ;
struct cryptop {int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; struct cryptodesc* crp_desc; } ;
struct cryptodesc {scalar_t__ crd_len; int /*<<< orphan*/  crd_skip; } ;
struct TYPE_7__ {void* ctx_hdr; int /*<<< orphan*/  key; } ;
struct TYPE_6__ {void* ivgen_hdrlen; void* seqno_numivs; void* cipherstop_lo_authinsert; void* pldlen; void* op_ivinsrtofst; } ;
struct chcr_wr {TYPE_2__ key_ctx; TYPE_1__ sec_cpl; } ;
struct ccr_softc {int /*<<< orphan*/  adapter; int /*<<< orphan*/  tx_channel_id; int /*<<< orphan*/  stats_wr_nomem; int /*<<< orphan*/  txq; TYPE_4__* sg_ulptx; int /*<<< orphan*/  sg_crp; } ;
struct TYPE_8__ {scalar_t__ partial_digest_len; int /*<<< orphan*/  mk_size; int /*<<< orphan*/  pads; int /*<<< orphan*/  auth_mode; struct auth_hash* auth_hash; } ;
struct ccr_session {scalar_t__ mode; TYPE_3__ hmac; } ;
struct auth_hash {scalar_t__ hashsize; scalar_t__ blocksize; } ;
struct _key_ctx {int dummy; } ;
struct TYPE_9__ {int sg_nseg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHCR_KEYCTX_NO_KEY ; 
 int /*<<< orphan*/  CPL_TX_SEC_PDU ; 
 int DUMMY_BYTES ; 
 int EFBIG ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ HMAC ; 
 scalar_t__ MAX_REQUEST_SIZE ; 
 int /*<<< orphan*/  SCMD_CIPH_MODE_NOP ; 
 scalar_t__ SCMD_HMAC_CTRL_NOP ; 
 scalar_t__ SCMD_HMAC_CTRL_NO_TRUNC ; 
 int /*<<< orphan*/  SCMD_PROTO_VERSION_GENERIC ; 
 scalar_t__ SGE_MAX_WR_LEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (scalar_t__) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 struct wrqe* FUNC24 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct ccr_softc*,struct chcr_wr*,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,struct cryptop*) ; 
 int FUNC26 (int) ; 
 scalar_t__ FUNC27 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (struct ccr_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (struct chcr_wr*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC34 (scalar_t__,int) ; 
 int FUNC35 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,struct wrqe*) ; 
 struct chcr_wr* FUNC38 (struct wrqe*) ; 

__attribute__((used)) static int
FUNC39(struct ccr_softc *sc, struct ccr_session *s, struct cryptop *crp)
{
	struct chcr_wr *crwr;
	struct wrqe *wr;
	struct auth_hash *axf;
	struct cryptodesc *crd;
	char *dst;
	u_int hash_size_in_response, kctx_flits, kctx_len, transhdr_len, wr_len;
	u_int hmac_ctrl, imm_len, iopad_size;
	int error, sgl_nsegs, sgl_len, use_opad;

	crd = crp->crp_desc;

	/* Reject requests with too large of an input buffer. */
	if (crd->crd_len > MAX_REQUEST_SIZE)
		return (EFBIG);

	axf = s->hmac.auth_hash;

	if (s->mode == HMAC) {
		use_opad = 1;
		hmac_ctrl = SCMD_HMAC_CTRL_NO_TRUNC;
	} else {
		use_opad = 0;
		hmac_ctrl = SCMD_HMAC_CTRL_NOP;
	}

	/* PADs must be 128-bit aligned. */
	iopad_size = FUNC34(s->hmac.partial_digest_len, 16);

	/*
	 * The 'key' part of the context includes the aligned IPAD and
	 * OPAD.
	 */
	kctx_len = iopad_size;
	if (use_opad)
		kctx_len += iopad_size;
	hash_size_in_response = axf->hashsize;
	transhdr_len = FUNC0(kctx_len);

	if (crd->crd_len == 0) {
		imm_len = axf->blocksize;
		sgl_nsegs = 0;
		sgl_len = 0;
	} else if (FUNC27(transhdr_len, crd->crd_len)) {
		imm_len = crd->crd_len;
		sgl_nsegs = 0;
		sgl_len = 0;
	} else {
		imm_len = 0;
		FUNC36(sc->sg_ulptx);
		error = FUNC35(sc->sg_ulptx, sc->sg_crp,
		    crd->crd_skip, crd->crd_len);
		if (error)
			return (error);
		sgl_nsegs = sc->sg_ulptx->sg_nseg;
		sgl_len = FUNC26(sgl_nsegs);
	}

	wr_len = FUNC34(transhdr_len, 16) + FUNC34(imm_len, 16) + sgl_len;
	if (wr_len > SGE_MAX_WR_LEN)
		return (EFBIG);
	wr = FUNC24(wr_len, sc->txq);
	if (wr == NULL) {
		sc->stats_wr_nomem++;
		return (ENOMEM);
	}
	crwr = FUNC38(wr);
	FUNC33(crwr, 0, wr_len);

	FUNC25(sc, crwr, kctx_len, wr_len, imm_len, sgl_len,
	    hash_size_in_response, crp);

	/* XXX: Hardcodes SGE loopback channel of 0. */
	crwr->sec_cpl.op_ivinsrtofst = FUNC30(
	    FUNC6(CPL_TX_SEC_PDU) |
	    FUNC8(sc->tx_channel_id) |
	    FUNC1(0) | FUNC9(1) |
	    FUNC4(2) | FUNC7(0) |
	    FUNC5(0));

	crwr->sec_cpl.pldlen = FUNC30(crd->crd_len == 0 ? axf->blocksize :
	    crd->crd_len);

	crwr->sec_cpl.cipherstop_lo_authinsert = FUNC30(
	    FUNC2(1) | FUNC3(0));

	/* These two flits are actually a CPL_TLS_TX_SCMD_FMT. */
	crwr->sec_cpl.seqno_numivs = FUNC30(
	    FUNC23(0) |
	    FUNC22(SCMD_PROTO_VERSION_GENERIC) |
	    FUNC17(SCMD_CIPH_MODE_NOP) |
	    FUNC16(s->hmac.auth_mode) |
	    FUNC18(hmac_ctrl));
	crwr->sec_cpl.ivgen_hdrlen = FUNC30(
	    FUNC19(0) |
	    FUNC21(crd->crd_len == 0 ? 1 : 0) | FUNC20(1));

	FUNC32(crwr->key_ctx.key, s->hmac.pads, kctx_len);

	/* XXX: F_KEY_CONTEXT_SALT_PRESENT set, but 'salt' not set. */
	kctx_flits = (sizeof(struct _key_ctx) + kctx_len) / 16;
	crwr->key_ctx.ctx_hdr = FUNC30(FUNC11(kctx_flits) |
	    FUNC13(use_opad) |
	    FUNC14(1) |
	    FUNC10(CHCR_KEYCTX_NO_KEY) |
	    FUNC12(s->hmac.mk_size) | FUNC15(1));

	dst = (char *)(crwr + 1) + kctx_len + DUMMY_BYTES;
	if (crd->crd_len == 0) {
		dst[0] = 0x80;
		if (s->mode == HMAC)
			*(uint64_t *)(dst + axf->blocksize - sizeof(uint64_t)) =
			    FUNC31(axf->blocksize << 3);
	} else if (imm_len != 0)
		FUNC29(crp->crp_flags, crp->crp_buf, crd->crd_skip,
		    crd->crd_len, dst);
	else
		FUNC28(sc, dst, sgl_nsegs);

	/* XXX: TODO backpressure */
	FUNC37(sc->adapter, wr);

	return (0);
}