#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct wrqe {int dummy; } ;
struct cryptop {int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; struct cryptodesc* crp_desc; } ;
struct cryptodesc {int crd_len; int crd_alg; int crd_flags; char* crd_iv; int /*<<< orphan*/  crd_skip; int /*<<< orphan*/  crd_inject; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;
struct TYPE_8__ {char* key; int /*<<< orphan*/  ctx_hdr; } ;
struct TYPE_7__ {void* ivgen_hdrlen; void* seqno_numivs; void* cipherstop_lo_authinsert; void* aadstart_cipherstop_hi; void* pldlen; void* op_ivinsrtofst; } ;
struct chcr_wr {TYPE_2__ key_ctx; TYPE_1__ sec_cpl; } ;
struct ccr_softc {int /*<<< orphan*/  adapter; int /*<<< orphan*/  tx_channel_id; int /*<<< orphan*/  stats_wr_nomem; int /*<<< orphan*/  txq; TYPE_4__* sg_ulptx; int /*<<< orphan*/  sg_crp; TYPE_4__* sg_dsgl; } ;
struct TYPE_9__ {scalar_t__ key_len; int iv_len; char* enckey; char* deckey; int /*<<< orphan*/  key_ctx_hdr; int /*<<< orphan*/  cipher_mode; } ;
struct ccr_session {TYPE_3__ blkcipher; } ;
struct TYPE_10__ {int sg_nseg; } ;

/* Variables and functions */
 int AES_BLOCK_LEN ; 
 scalar_t__ CHCR_DECRYPT_OP ; 
 scalar_t__ CHCR_ENCRYPT_OP ; 
 int CHCR_MAX_CRYPTO_IV_LEN ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  CPL_TX_SEC_PDU ; 
 int CRD_F_ENCRYPT ; 
 int CRD_F_IV_EXPLICIT ; 
 int CRD_F_IV_PRESENT ; 
#define  CRYPTO_AES_CBC 130 
#define  CRYPTO_AES_ICM 129 
#define  CRYPTO_AES_XTS 128 
 int /*<<< orphan*/  DSGL_SGE_MAXLEN ; 
 int EFBIG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int MAX_REQUEST_SIZE ; 
 int MAX_RX_PHYS_DSGL_SGE ; 
 int /*<<< orphan*/  SCMD_AUTH_MODE_NOP ; 
 int /*<<< orphan*/  SCMD_HMAC_CTRL_NOP ; 
 int /*<<< orphan*/  SCMD_PROTO_VERSION_GENERIC ; 
 scalar_t__ SGE_MAX_WR_LEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (scalar_t__) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 struct wrqe* FUNC25 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC27 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (struct ccr_softc*,struct chcr_wr*,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,struct cryptop*) ; 
 int FUNC30 (int) ; 
 scalar_t__ FUNC31 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC32 (struct ccr_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC33 (struct ccr_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC36 (int) ; 
 int /*<<< orphan*/  FUNC37 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC38 (struct chcr_wr*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC39 (scalar_t__,int) ; 
 int FUNC40 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,struct wrqe*) ; 
 struct chcr_wr* FUNC43 (struct wrqe*) ; 

__attribute__((used)) static int
FUNC44(struct ccr_softc *sc, struct ccr_session *s, struct cryptop *crp)
{
	char iv[CHCR_MAX_CRYPTO_IV_LEN];
	struct chcr_wr *crwr;
	struct wrqe *wr;
	struct cryptodesc *crd;
	char *dst;
	u_int kctx_len, key_half, op_type, transhdr_len, wr_len;
	u_int imm_len;
	int dsgl_nsegs, dsgl_len;
	int sgl_nsegs, sgl_len;
	int error;

	crd = crp->crp_desc;

	if (s->blkcipher.key_len == 0 || crd->crd_len == 0)
		return (EINVAL);
	if (crd->crd_alg == CRYPTO_AES_CBC &&
	    (crd->crd_len % AES_BLOCK_LEN) != 0)
		return (EINVAL);

	/* Reject requests with too large of an input buffer. */
	if (crd->crd_len > MAX_REQUEST_SIZE)
		return (EFBIG);

	if (crd->crd_flags & CRD_F_ENCRYPT)
		op_type = CHCR_ENCRYPT_OP;
	else
		op_type = CHCR_DECRYPT_OP;
	
	FUNC41(sc->sg_dsgl);
	error = FUNC40(sc->sg_dsgl, sc->sg_crp, crd->crd_skip,
	    crd->crd_len);
	if (error)
		return (error);
	dsgl_nsegs = FUNC27(sc->sg_dsgl, DSGL_SGE_MAXLEN);
	if (dsgl_nsegs > MAX_RX_PHYS_DSGL_SGE)
		return (EFBIG);
	dsgl_len = FUNC28(dsgl_nsegs);

	/* The 'key' must be 128-bit aligned. */
	kctx_len = FUNC39(s->blkcipher.key_len, 16);
	transhdr_len = FUNC0(kctx_len, dsgl_len);

	if (FUNC31(transhdr_len, crd->crd_len +
	    s->blkcipher.iv_len)) {
		imm_len = crd->crd_len;
		sgl_nsegs = 0;
		sgl_len = 0;
	} else {
		imm_len = 0;
		FUNC41(sc->sg_ulptx);
		error = FUNC40(sc->sg_ulptx, sc->sg_crp,
		    crd->crd_skip, crd->crd_len);
		if (error)
			return (error);
		sgl_nsegs = sc->sg_ulptx->sg_nseg;
		sgl_len = FUNC30(sgl_nsegs);
	}

	wr_len = FUNC39(transhdr_len, 16) + s->blkcipher.iv_len +
	    FUNC39(imm_len, 16) + sgl_len;
	if (wr_len > SGE_MAX_WR_LEN)
		return (EFBIG);
	wr = FUNC25(wr_len, sc->txq);
	if (wr == NULL) {
		sc->stats_wr_nomem++;
		return (ENOMEM);
	}
	crwr = FUNC43(wr);
	FUNC38(crwr, 0, wr_len);

	/*
	 * Read the existing IV from the request or generate a random
	 * one if none is provided.  Optionally copy the generated IV
	 * into the output buffer if requested.
	 */
	if (op_type == CHCR_ENCRYPT_OP) {
		if (crd->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC37(iv, crd->crd_iv, s->blkcipher.iv_len);
		else
			FUNC26(iv, s->blkcipher.iv_len, 0);
		if ((crd->crd_flags & CRD_F_IV_PRESENT) == 0)
			FUNC34(crp->crp_flags, crp->crp_buf,
			    crd->crd_inject, s->blkcipher.iv_len, iv);
	} else {
		if (crd->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC37(iv, crd->crd_iv, s->blkcipher.iv_len);
		else
			FUNC35(crp->crp_flags, crp->crp_buf,
			    crd->crd_inject, s->blkcipher.iv_len, iv);
	}

	FUNC29(sc, crwr, kctx_len, wr_len, imm_len, sgl_len, 0,
	    crp);

	/* XXX: Hardcodes SGE loopback channel of 0. */
	crwr->sec_cpl.op_ivinsrtofst = FUNC36(
	    FUNC7(CPL_TX_SEC_PDU) |
	    FUNC9(sc->tx_channel_id) |
	    FUNC1(0) | FUNC10(1) |
	    FUNC5(2) | FUNC8(0) |
	    FUNC6(1));

	crwr->sec_cpl.pldlen = FUNC36(s->blkcipher.iv_len + crd->crd_len);

	crwr->sec_cpl.aadstart_cipherstop_hi = FUNC36(
	    FUNC2(s->blkcipher.iv_len + 1) |
	    FUNC3(0));
	crwr->sec_cpl.cipherstop_lo_authinsert = FUNC36(
	    FUNC4(0));

	/* These two flits are actually a CPL_TLS_TX_SCMD_FMT. */
	crwr->sec_cpl.seqno_numivs = FUNC36(
	    FUNC24(0) |
	    FUNC23(SCMD_PROTO_VERSION_GENERIC) |
	    FUNC14(op_type) |
	    FUNC13(s->blkcipher.cipher_mode) |
	    FUNC12(SCMD_AUTH_MODE_NOP) |
	    FUNC16(SCMD_HMAC_CTRL_NOP) |
	    FUNC18(s->blkcipher.iv_len / 2) |
	    FUNC22(0));
	crwr->sec_cpl.ivgen_hdrlen = FUNC36(
	    FUNC17(0) |
	    FUNC21(0) | FUNC19(0) | FUNC20(0) |
	    FUNC11(1) | FUNC15(dsgl_len));

	crwr->key_ctx.ctx_hdr = s->blkcipher.key_ctx_hdr;
	switch (crd->crd_alg) {
	case CRYPTO_AES_CBC:
		if (crd->crd_flags & CRD_F_ENCRYPT)
			FUNC37(crwr->key_ctx.key, s->blkcipher.enckey,
			    s->blkcipher.key_len);
		else
			FUNC37(crwr->key_ctx.key, s->blkcipher.deckey,
			    s->blkcipher.key_len);
		break;
	case CRYPTO_AES_ICM:
		FUNC37(crwr->key_ctx.key, s->blkcipher.enckey,
		    s->blkcipher.key_len);
		break;
	case CRYPTO_AES_XTS:
		key_half = s->blkcipher.key_len / 2;
		FUNC37(crwr->key_ctx.key, s->blkcipher.enckey + key_half,
		    key_half);
		if (crd->crd_flags & CRD_F_ENCRYPT)
			FUNC37(crwr->key_ctx.key + key_half,
			    s->blkcipher.enckey, key_half);
		else
			FUNC37(crwr->key_ctx.key + key_half,
			    s->blkcipher.deckey, key_half);
		break;
	}

	dst = (char *)(crwr + 1) + kctx_len;
	FUNC32(sc, dst, dsgl_nsegs);
	dst += sizeof(struct cpl_rx_phys_dsgl) + dsgl_len;
	FUNC37(dst, iv, s->blkcipher.iv_len);
	dst += s->blkcipher.iv_len;
	if (imm_len != 0)
		FUNC35(crp->crp_flags, crp->crp_buf, crd->crd_skip,
		    crd->crd_len, dst);
	else
		FUNC33(sc, dst, sgl_nsegs);

	/* XXX: TODO backpressure */
	FUNC42(sc->adapter, wr);

	return (0);
}