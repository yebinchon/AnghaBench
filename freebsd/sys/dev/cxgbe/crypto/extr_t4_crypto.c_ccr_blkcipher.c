
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct wrqe {int dummy; } ;
struct cryptop {int crp_buf; int crp_flags; struct cryptodesc* crp_desc; } ;
struct cryptodesc {int crd_len; int crd_alg; int crd_flags; char* crd_iv; int crd_skip; int crd_inject; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;
struct TYPE_8__ {char* key; int ctx_hdr; } ;
struct TYPE_7__ {void* ivgen_hdrlen; void* seqno_numivs; void* cipherstop_lo_authinsert; void* aadstart_cipherstop_hi; void* pldlen; void* op_ivinsrtofst; } ;
struct chcr_wr {TYPE_2__ key_ctx; TYPE_1__ sec_cpl; } ;
struct ccr_softc {int adapter; int tx_channel_id; int stats_wr_nomem; int txq; TYPE_4__* sg_ulptx; int sg_crp; TYPE_4__* sg_dsgl; } ;
struct TYPE_9__ {scalar_t__ key_len; int iv_len; char* enckey; char* deckey; int key_ctx_hdr; int cipher_mode; } ;
struct ccr_session {TYPE_3__ blkcipher; } ;
struct TYPE_10__ {int sg_nseg; } ;


 int AES_BLOCK_LEN ;
 scalar_t__ CHCR_DECRYPT_OP ;
 scalar_t__ CHCR_ENCRYPT_OP ;
 int CHCR_MAX_CRYPTO_IV_LEN ;
 scalar_t__ CIPHER_TRANSHDR_SIZE (scalar_t__,int) ;
 int CPL_TX_SEC_PDU ;
 int CRD_F_ENCRYPT ;
 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;



 int DSGL_SGE_MAXLEN ;
 int EFBIG ;
 int EINVAL ;
 int ENOMEM ;
 int MAX_REQUEST_SIZE ;
 int MAX_RX_PHYS_DSGL_SGE ;
 int SCMD_AUTH_MODE_NOP ;
 int SCMD_HMAC_CTRL_NOP ;
 int SCMD_PROTO_VERSION_GENERIC ;
 scalar_t__ SGE_MAX_WR_LEN ;
 int V_CPL_TX_SEC_PDU_ACKFOLLOWS (int ) ;
 int V_CPL_TX_SEC_PDU_CIPHERSTART (int) ;
 int V_CPL_TX_SEC_PDU_CIPHERSTOP_HI (int ) ;
 int V_CPL_TX_SEC_PDU_CIPHERSTOP_LO (int ) ;
 int V_CPL_TX_SEC_PDU_CPLLEN (int) ;
 int V_CPL_TX_SEC_PDU_IVINSRTOFST (int) ;
 int V_CPL_TX_SEC_PDU_OPCODE (int ) ;
 int V_CPL_TX_SEC_PDU_PLACEHOLDER (int ) ;
 int V_CPL_TX_SEC_PDU_RXCHID (int ) ;
 int V_CPL_TX_SEC_PDU_ULPTXLPBK (int) ;
 int V_SCMD_AADIVDROP (int) ;
 int V_SCMD_AUTH_MODE (int ) ;
 int V_SCMD_CIPH_MODE (int ) ;
 int V_SCMD_ENC_DEC_CTRL (scalar_t__) ;
 int V_SCMD_HDR_LEN (int) ;
 int V_SCMD_HMAC_CTRL (int ) ;
 int V_SCMD_IV_GEN_CTRL (int ) ;
 int V_SCMD_IV_SIZE (int) ;
 int V_SCMD_LAST_FRAG (int ) ;
 int V_SCMD_MAC_ONLY (int ) ;
 int V_SCMD_MORE_FRAGS (int ) ;
 int V_SCMD_NUM_IVS (int ) ;
 int V_SCMD_PROTO_VERSION (int ) ;
 int V_SCMD_SEQ_NO_CTRL (int ) ;
 struct wrqe* alloc_wrqe (scalar_t__,int ) ;
 int arc4rand (char*,scalar_t__,int ) ;
 int ccr_count_sgl (TYPE_4__*,int ) ;
 int ccr_phys_dsgl_len (int) ;
 int ccr_populate_wreq (struct ccr_softc*,struct chcr_wr*,scalar_t__,scalar_t__,scalar_t__,int,int ,struct cryptop*) ;
 int ccr_ulptx_sgl_len (int) ;
 scalar_t__ ccr_use_imm_data (scalar_t__,int) ;
 int ccr_write_phys_dsgl (struct ccr_softc*,char*,int) ;
 int ccr_write_ulptx_sgl (struct ccr_softc*,char*,int) ;
 int crypto_copyback (int ,int ,int ,scalar_t__,char*) ;
 int crypto_copydata (int ,int ,int ,int,char*) ;
 void* htobe32 (int) ;
 int memcpy (char*,char*,scalar_t__) ;
 int memset (struct chcr_wr*,int ,scalar_t__) ;
 scalar_t__ roundup2 (scalar_t__,int) ;
 int sglist_append_sglist (TYPE_4__*,int ,int ,int) ;
 int sglist_reset (TYPE_4__*) ;
 int t4_wrq_tx (int ,struct wrqe*) ;
 struct chcr_wr* wrtod (struct wrqe*) ;

__attribute__((used)) static int
ccr_blkcipher(struct ccr_softc *sc, struct ccr_session *s, struct cryptop *crp)
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
 if (crd->crd_alg == 130 &&
     (crd->crd_len % AES_BLOCK_LEN) != 0)
  return (EINVAL);


 if (crd->crd_len > MAX_REQUEST_SIZE)
  return (EFBIG);

 if (crd->crd_flags & CRD_F_ENCRYPT)
  op_type = CHCR_ENCRYPT_OP;
 else
  op_type = CHCR_DECRYPT_OP;

 sglist_reset(sc->sg_dsgl);
 error = sglist_append_sglist(sc->sg_dsgl, sc->sg_crp, crd->crd_skip,
     crd->crd_len);
 if (error)
  return (error);
 dsgl_nsegs = ccr_count_sgl(sc->sg_dsgl, DSGL_SGE_MAXLEN);
 if (dsgl_nsegs > MAX_RX_PHYS_DSGL_SGE)
  return (EFBIG);
 dsgl_len = ccr_phys_dsgl_len(dsgl_nsegs);


 kctx_len = roundup2(s->blkcipher.key_len, 16);
 transhdr_len = CIPHER_TRANSHDR_SIZE(kctx_len, dsgl_len);

 if (ccr_use_imm_data(transhdr_len, crd->crd_len +
     s->blkcipher.iv_len)) {
  imm_len = crd->crd_len;
  sgl_nsegs = 0;
  sgl_len = 0;
 } else {
  imm_len = 0;
  sglist_reset(sc->sg_ulptx);
  error = sglist_append_sglist(sc->sg_ulptx, sc->sg_crp,
      crd->crd_skip, crd->crd_len);
  if (error)
   return (error);
  sgl_nsegs = sc->sg_ulptx->sg_nseg;
  sgl_len = ccr_ulptx_sgl_len(sgl_nsegs);
 }

 wr_len = roundup2(transhdr_len, 16) + s->blkcipher.iv_len +
     roundup2(imm_len, 16) + sgl_len;
 if (wr_len > SGE_MAX_WR_LEN)
  return (EFBIG);
 wr = alloc_wrqe(wr_len, sc->txq);
 if (wr == ((void*)0)) {
  sc->stats_wr_nomem++;
  return (ENOMEM);
 }
 crwr = wrtod(wr);
 memset(crwr, 0, wr_len);






 if (op_type == CHCR_ENCRYPT_OP) {
  if (crd->crd_flags & CRD_F_IV_EXPLICIT)
   memcpy(iv, crd->crd_iv, s->blkcipher.iv_len);
  else
   arc4rand(iv, s->blkcipher.iv_len, 0);
  if ((crd->crd_flags & CRD_F_IV_PRESENT) == 0)
   crypto_copyback(crp->crp_flags, crp->crp_buf,
       crd->crd_inject, s->blkcipher.iv_len, iv);
 } else {
  if (crd->crd_flags & CRD_F_IV_EXPLICIT)
   memcpy(iv, crd->crd_iv, s->blkcipher.iv_len);
  else
   crypto_copydata(crp->crp_flags, crp->crp_buf,
       crd->crd_inject, s->blkcipher.iv_len, iv);
 }

 ccr_populate_wreq(sc, crwr, kctx_len, wr_len, imm_len, sgl_len, 0,
     crp);


 crwr->sec_cpl.op_ivinsrtofst = htobe32(
     V_CPL_TX_SEC_PDU_OPCODE(CPL_TX_SEC_PDU) |
     V_CPL_TX_SEC_PDU_RXCHID(sc->tx_channel_id) |
     V_CPL_TX_SEC_PDU_ACKFOLLOWS(0) | V_CPL_TX_SEC_PDU_ULPTXLPBK(1) |
     V_CPL_TX_SEC_PDU_CPLLEN(2) | V_CPL_TX_SEC_PDU_PLACEHOLDER(0) |
     V_CPL_TX_SEC_PDU_IVINSRTOFST(1));

 crwr->sec_cpl.pldlen = htobe32(s->blkcipher.iv_len + crd->crd_len);

 crwr->sec_cpl.aadstart_cipherstop_hi = htobe32(
     V_CPL_TX_SEC_PDU_CIPHERSTART(s->blkcipher.iv_len + 1) |
     V_CPL_TX_SEC_PDU_CIPHERSTOP_HI(0));
 crwr->sec_cpl.cipherstop_lo_authinsert = htobe32(
     V_CPL_TX_SEC_PDU_CIPHERSTOP_LO(0));


 crwr->sec_cpl.seqno_numivs = htobe32(
     V_SCMD_SEQ_NO_CTRL(0) |
     V_SCMD_PROTO_VERSION(SCMD_PROTO_VERSION_GENERIC) |
     V_SCMD_ENC_DEC_CTRL(op_type) |
     V_SCMD_CIPH_MODE(s->blkcipher.cipher_mode) |
     V_SCMD_AUTH_MODE(SCMD_AUTH_MODE_NOP) |
     V_SCMD_HMAC_CTRL(SCMD_HMAC_CTRL_NOP) |
     V_SCMD_IV_SIZE(s->blkcipher.iv_len / 2) |
     V_SCMD_NUM_IVS(0));
 crwr->sec_cpl.ivgen_hdrlen = htobe32(
     V_SCMD_IV_GEN_CTRL(0) |
     V_SCMD_MORE_FRAGS(0) | V_SCMD_LAST_FRAG(0) | V_SCMD_MAC_ONLY(0) |
     V_SCMD_AADIVDROP(1) | V_SCMD_HDR_LEN(dsgl_len));

 crwr->key_ctx.ctx_hdr = s->blkcipher.key_ctx_hdr;
 switch (crd->crd_alg) {
 case 130:
  if (crd->crd_flags & CRD_F_ENCRYPT)
   memcpy(crwr->key_ctx.key, s->blkcipher.enckey,
       s->blkcipher.key_len);
  else
   memcpy(crwr->key_ctx.key, s->blkcipher.deckey,
       s->blkcipher.key_len);
  break;
 case 129:
  memcpy(crwr->key_ctx.key, s->blkcipher.enckey,
      s->blkcipher.key_len);
  break;
 case 128:
  key_half = s->blkcipher.key_len / 2;
  memcpy(crwr->key_ctx.key, s->blkcipher.enckey + key_half,
      key_half);
  if (crd->crd_flags & CRD_F_ENCRYPT)
   memcpy(crwr->key_ctx.key + key_half,
       s->blkcipher.enckey, key_half);
  else
   memcpy(crwr->key_ctx.key + key_half,
       s->blkcipher.deckey, key_half);
  break;
 }

 dst = (char *)(crwr + 1) + kctx_len;
 ccr_write_phys_dsgl(sc, dst, dsgl_nsegs);
 dst += sizeof(struct cpl_rx_phys_dsgl) + dsgl_len;
 memcpy(dst, iv, s->blkcipher.iv_len);
 dst += s->blkcipher.iv_len;
 if (imm_len != 0)
  crypto_copydata(crp->crp_flags, crp->crp_buf, crd->crd_skip,
      crd->crd_len, dst);
 else
  ccr_write_ulptx_sgl(sc, dst, sgl_nsegs);


 t4_wrq_tx(sc->adapter, wr);

 return (0);
}
