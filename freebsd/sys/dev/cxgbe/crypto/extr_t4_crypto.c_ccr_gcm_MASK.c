#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  scalar_t__ u_int ;
struct wrqe {int dummy; } ;
struct cryptop {int /*<<< orphan*/  crp_buf; int /*<<< orphan*/  crp_flags; } ;
struct cryptodesc {scalar_t__ crd_len; scalar_t__ crd_skip; int crd_flags; scalar_t__ crd_inject; char* crd_iv; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;
struct TYPE_9__ {char* key; int /*<<< orphan*/  ctx_hdr; } ;
struct TYPE_8__ {void* ivgen_hdrlen; void* seqno_numivs; void* cipherstop_lo_authinsert; void* aadstart_cipherstop_hi; void* pldlen; void* op_ivinsrtofst; } ;
struct chcr_wr {TYPE_2__ key_ctx; TYPE_1__ sec_cpl; } ;
struct ccr_softc {int /*<<< orphan*/  adapter; int /*<<< orphan*/  tx_channel_id; int /*<<< orphan*/  stats_wr_nomem; int /*<<< orphan*/  txq; TYPE_5__* sg_ulptx; int /*<<< orphan*/  sg_crp; TYPE_5__* sg_dsgl; int /*<<< orphan*/  sg_iv_aad; } ;
struct TYPE_10__ {scalar_t__ hash_len; char* ghash_h; } ;
struct TYPE_11__ {scalar_t__ key_len; int iv_len; char* enckey; int /*<<< orphan*/  key_ctx_hdr; } ;
struct ccr_session {TYPE_3__ gmac; TYPE_4__ blkcipher; } ;
struct TYPE_12__ {int sg_nseg; } ;

/* Variables and functions */
 scalar_t__ AES_BLOCK_LEN ; 
 int /*<<< orphan*/  AES_GMAC_HASH_LEN ; 
 scalar_t__ CHCR_DECRYPT_OP ; 
 scalar_t__ CHCR_ENCRYPT_OP ; 
 int CHCR_MAX_CRYPTO_IV_LEN ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  CPL_TX_SEC_PDU ; 
 int CRD_F_ENCRYPT ; 
 int CRD_F_IV_EXPLICIT ; 
 int CRD_F_IV_PRESENT ; 
 int /*<<< orphan*/  DSGL_SGE_MAXLEN ; 
 int EFBIG ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 scalar_t__ GMAC_BLOCK_LEN ; 
 scalar_t__ MAX_AAD_LEN ; 
 scalar_t__ MAX_REQUEST_SIZE ; 
 int MAX_RX_PHYS_DSGL_SGE ; 
 int /*<<< orphan*/  SCMD_AUTH_MODE_GHASH ; 
 int /*<<< orphan*/  SCMD_CIPH_MODE_AES_GCM ; 
 int /*<<< orphan*/  SCMD_PROTO_VERSION_GENERIC ; 
 scalar_t__ SGE_MAX_WR_LEN ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (int) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ) ; 
 struct wrqe* FUNC31 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC33 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC35 (int) ; 
 int /*<<< orphan*/  FUNC36 (struct ccr_softc*,struct chcr_wr*,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,struct cryptop*) ; 
 int FUNC37 (int) ; 
 scalar_t__ FUNC38 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC39 (struct ccr_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC40 (struct ccr_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,char*) ; 
 void* FUNC43 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC44 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC45 (struct chcr_wr*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC46 (scalar_t__,int) ; 
 int FUNC47 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC48 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ,struct wrqe*) ; 
 struct chcr_wr* FUNC50 (struct wrqe*) ; 

__attribute__((used)) static int
FUNC51(struct ccr_softc *sc, struct ccr_session *s, struct cryptop *crp,
    struct cryptodesc *crda, struct cryptodesc *crde)
{
	char iv[CHCR_MAX_CRYPTO_IV_LEN];
	struct chcr_wr *crwr;
	struct wrqe *wr;
	char *dst;
	u_int iv_len, kctx_len, op_type, transhdr_len, wr_len;
	u_int hash_size_in_response, imm_len;
	u_int aad_start, aad_stop, cipher_start, cipher_stop, auth_insert;
	u_int hmac_ctrl, input_len;
	int dsgl_nsegs, dsgl_len;
	int sgl_nsegs, sgl_len;
	int error;

	if (s->blkcipher.key_len == 0)
		return (EINVAL);

	/*
	 * The crypto engine doesn't handle GCM requests with an empty
	 * payload, so handle those in software instead.
	 */
	if (crde->crd_len == 0)
		return (EMSGSIZE);

	/*
	 * AAD is only permitted before the cipher/plain text, not
	 * after.
	 */
	if (crda->crd_len + crda->crd_skip > crde->crd_len + crde->crd_skip)
		return (EMSGSIZE);

	if (crda->crd_len + AES_BLOCK_LEN > MAX_AAD_LEN)
		return (EMSGSIZE);

	hash_size_in_response = s->gmac.hash_len;
	if (crde->crd_flags & CRD_F_ENCRYPT)
		op_type = CHCR_ENCRYPT_OP;
	else
		op_type = CHCR_DECRYPT_OP;

	/*
	 * The IV handling for GCM in OCF is a bit more complicated in
	 * that IPSec provides a full 16-byte IV (including the
	 * counter), whereas the /dev/crypto interface sometimes
	 * provides a full 16-byte IV (if no IV is provided in the
	 * ioctl) and sometimes a 12-byte IV (if the IV was explicit).
	 *
	 * When provided a 12-byte IV, assume the IV is really 16 bytes
	 * with a counter in the last 4 bytes initialized to 1.
	 *
	 * While iv_len is checked below, the value is currently
	 * always set to 12 when creating a GCM session in this driver
	 * due to limitations in OCF (there is no way to know what the
	 * IV length of a given request will be).  This means that the
	 * driver always assumes as 12-byte IV for now.
	 */
	if (s->blkcipher.iv_len == 12)
		iv_len = AES_BLOCK_LEN;
	else
		iv_len = s->blkcipher.iv_len;

	/*
	 * The output buffer consists of the cipher text followed by
	 * the tag when encrypting.  For decryption it only contains
	 * the plain text.
	 *
	 * Due to a firmware bug, the output buffer must include a
	 * dummy output buffer for the IV and AAD prior to the real
	 * output buffer.
	 */
	if (op_type == CHCR_ENCRYPT_OP) {
		if (iv_len + crda->crd_len + crde->crd_len +
		    hash_size_in_response > MAX_REQUEST_SIZE)
			return (EFBIG);
	} else {
		if (iv_len + crda->crd_len + crde->crd_len > MAX_REQUEST_SIZE)
			return (EFBIG);
	}
	FUNC48(sc->sg_dsgl);
	error = FUNC47(sc->sg_dsgl, sc->sg_iv_aad, 0, iv_len +
	    crda->crd_len);
	if (error)
		return (error);
	error = FUNC47(sc->sg_dsgl, sc->sg_crp, crde->crd_skip,
	    crde->crd_len);
	if (error)
		return (error);
	if (op_type == CHCR_ENCRYPT_OP) {
		error = FUNC47(sc->sg_dsgl, sc->sg_crp,
		    crda->crd_inject, hash_size_in_response);
		if (error)
			return (error);
	}
	dsgl_nsegs = FUNC33(sc->sg_dsgl, DSGL_SGE_MAXLEN);
	if (dsgl_nsegs > MAX_RX_PHYS_DSGL_SGE)
		return (EFBIG);
	dsgl_len = FUNC35(dsgl_nsegs);

	/*
	 * The 'key' part of the key context consists of the key followed
	 * by the Galois hash key.
	 */
	kctx_len = FUNC46(s->blkcipher.key_len, 16) + GMAC_BLOCK_LEN;
	transhdr_len = FUNC0(kctx_len, dsgl_len);

	/*
	 * The input buffer consists of the IV, any AAD, and then the
	 * cipher/plain text.  For decryption requests the hash is
	 * appended after the cipher text.
	 *
	 * The IV is always stored at the start of the input buffer
	 * even though it may be duplicated in the payload.  The
	 * crypto engine doesn't work properly if the IV offset points
	 * inside of the AAD region, so a second copy is always
	 * required.
	 */
	input_len = crda->crd_len + crde->crd_len;
	if (op_type == CHCR_DECRYPT_OP)
		input_len += hash_size_in_response;
	if (input_len > MAX_REQUEST_SIZE)
		return (EFBIG);
	if (FUNC38(transhdr_len, iv_len + input_len)) {
		imm_len = input_len;
		sgl_nsegs = 0;
		sgl_len = 0;
	} else {
		imm_len = 0;
		FUNC48(sc->sg_ulptx);
		if (crda->crd_len != 0) {
			error = FUNC47(sc->sg_ulptx, sc->sg_crp,
			    crda->crd_skip, crda->crd_len);
			if (error)
				return (error);
		}
		error = FUNC47(sc->sg_ulptx, sc->sg_crp,
		    crde->crd_skip, crde->crd_len);
		if (error)
			return (error);
		if (op_type == CHCR_DECRYPT_OP) {
			error = FUNC47(sc->sg_ulptx, sc->sg_crp,
			    crda->crd_inject, hash_size_in_response);
			if (error)
				return (error);
		}
		sgl_nsegs = sc->sg_ulptx->sg_nseg;
		sgl_len = FUNC37(sgl_nsegs);
	}

	if (crda->crd_len != 0) {
		aad_start = iv_len + 1;
		aad_stop = aad_start + crda->crd_len - 1;
	} else {
		aad_start = 0;
		aad_stop = 0;
	}
	cipher_start = iv_len + crda->crd_len + 1;
	if (op_type == CHCR_DECRYPT_OP)
		cipher_stop = hash_size_in_response;
	else
		cipher_stop = 0;
	if (op_type == CHCR_DECRYPT_OP)
		auth_insert = hash_size_in_response;
	else
		auth_insert = 0;

	wr_len = FUNC46(transhdr_len, 16) + iv_len + FUNC46(imm_len, 16) +
	    sgl_len;
	if (wr_len > SGE_MAX_WR_LEN)
		return (EFBIG);
	wr = FUNC31(wr_len, sc->txq);
	if (wr == NULL) {
		sc->stats_wr_nomem++;
		return (ENOMEM);
	}
	crwr = FUNC50(wr);
	FUNC45(crwr, 0, wr_len);

	/*
	 * Read the existing IV from the request or generate a random
	 * one if none is provided.  Optionally copy the generated IV
	 * into the output buffer if requested.
	 *
	 * If the input IV is 12 bytes, append an explicit 4-byte
	 * counter of 1.
	 */
	if (op_type == CHCR_ENCRYPT_OP) {
		if (crde->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC44(iv, crde->crd_iv, s->blkcipher.iv_len);
		else
			FUNC32(iv, s->blkcipher.iv_len, 0);
		if ((crde->crd_flags & CRD_F_IV_PRESENT) == 0)
			FUNC41(crp->crp_flags, crp->crp_buf,
			    crde->crd_inject, s->blkcipher.iv_len, iv);
	} else {
		if (crde->crd_flags & CRD_F_IV_EXPLICIT)
			FUNC44(iv, crde->crd_iv, s->blkcipher.iv_len);
		else
			FUNC42(crp->crp_flags, crp->crp_buf,
			    crde->crd_inject, s->blkcipher.iv_len, iv);
	}
	if (s->blkcipher.iv_len == 12)
		*(uint32_t *)&iv[12] = FUNC43(1);

	FUNC36(sc, crwr, kctx_len, wr_len, imm_len, sgl_len, 0,
	    crp);

	/* XXX: Hardcodes SGE loopback channel of 0. */
	crwr->sec_cpl.op_ivinsrtofst = FUNC43(
	    FUNC12(CPL_TX_SEC_PDU) |
	    FUNC14(sc->tx_channel_id) |
	    FUNC3(0) | FUNC15(1) |
	    FUNC10(2) | FUNC13(0) |
	    FUNC11(1));

	crwr->sec_cpl.pldlen = FUNC43(iv_len + input_len);

	/*
	 * NB: cipherstop is explicitly set to 0.  On encrypt it
	 * should normally be set to 0 anyway (as the encrypt crd ends
	 * at the end of the input).  However, for decrypt the cipher
	 * ends before the tag in the AUTHENC case (and authstop is
	 * set to stop before the tag), but for GCM the cipher still
	 * runs to the end of the buffer.  Not sure if this is
	 * intentional or a firmware quirk, but it is required for
	 * working tag validation with GCM decryption.
	 */
	crwr->sec_cpl.aadstart_cipherstop_hi = FUNC43(
	    FUNC1(aad_start) |
	    FUNC2(aad_stop) |
	    FUNC7(cipher_start) |
	    FUNC8(0));
	crwr->sec_cpl.cipherstop_lo_authinsert = FUNC43(
	    FUNC9(0) |
	    FUNC5(cipher_start) |
	    FUNC6(cipher_stop) |
	    FUNC4(auth_insert));

	/* These two flits are actually a CPL_TLS_TX_SCMD_FMT. */
	hmac_ctrl = FUNC34(AES_GMAC_HASH_LEN, hash_size_in_response);
	crwr->sec_cpl.seqno_numivs = FUNC43(
	    FUNC30(0) |
	    FUNC29(SCMD_PROTO_VERSION_GENERIC) |
	    FUNC20(op_type) |
	    FUNC18(op_type == CHCR_ENCRYPT_OP ? 1 : 0) |
	    FUNC19(SCMD_CIPH_MODE_AES_GCM) |
	    FUNC17(SCMD_AUTH_MODE_GHASH) |
	    FUNC22(hmac_ctrl) |
	    FUNC24(iv_len / 2) |
	    FUNC28(0));
	crwr->sec_cpl.ivgen_hdrlen = FUNC43(
	    FUNC23(0) |
	    FUNC27(0) | FUNC25(0) | FUNC26(0) |
	    FUNC16(0) | FUNC21(dsgl_len));

	crwr->key_ctx.ctx_hdr = s->blkcipher.key_ctx_hdr;
	FUNC44(crwr->key_ctx.key, s->blkcipher.enckey, s->blkcipher.key_len);
	dst = crwr->key_ctx.key + FUNC46(s->blkcipher.key_len, 16);
	FUNC44(dst, s->gmac.ghash_h, GMAC_BLOCK_LEN);

	dst = (char *)(crwr + 1) + kctx_len;
	FUNC39(sc, dst, dsgl_nsegs);
	dst += sizeof(struct cpl_rx_phys_dsgl) + dsgl_len;
	FUNC44(dst, iv, iv_len);
	dst += iv_len;
	if (imm_len != 0) {
		if (crda->crd_len != 0) {
			FUNC42(crp->crp_flags, crp->crp_buf,
			    crda->crd_skip, crda->crd_len, dst);
			dst += crda->crd_len;
		}
		FUNC42(crp->crp_flags, crp->crp_buf, crde->crd_skip,
		    crde->crd_len, dst);
		dst += crde->crd_len;
		if (op_type == CHCR_DECRYPT_OP)
			FUNC42(crp->crp_flags, crp->crp_buf,
			    crda->crd_inject, hash_size_in_response, dst);
	} else
		FUNC40(sc, dst, sgl_nsegs);

	/* XXX: TODO backpressure */
	FUNC49(sc->adapter, wr);

	return (0);
}