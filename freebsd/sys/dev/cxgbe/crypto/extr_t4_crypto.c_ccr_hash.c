
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ u_int ;
struct wrqe {int dummy; } ;
struct cryptop {int crp_buf; int crp_flags; struct cryptodesc* crp_desc; } ;
struct cryptodesc {scalar_t__ crd_len; int crd_skip; } ;
struct TYPE_7__ {void* ctx_hdr; int key; } ;
struct TYPE_6__ {void* ivgen_hdrlen; void* seqno_numivs; void* cipherstop_lo_authinsert; void* pldlen; void* op_ivinsrtofst; } ;
struct chcr_wr {TYPE_2__ key_ctx; TYPE_1__ sec_cpl; } ;
struct ccr_softc {int adapter; int tx_channel_id; int stats_wr_nomem; int txq; TYPE_4__* sg_ulptx; int sg_crp; } ;
struct TYPE_8__ {scalar_t__ partial_digest_len; int mk_size; int pads; int auth_mode; struct auth_hash* auth_hash; } ;
struct ccr_session {scalar_t__ mode; TYPE_3__ hmac; } ;
struct auth_hash {scalar_t__ hashsize; scalar_t__ blocksize; } ;
struct _key_ctx {int dummy; } ;
struct TYPE_9__ {int sg_nseg; } ;


 int CHCR_KEYCTX_NO_KEY ;
 int CPL_TX_SEC_PDU ;
 int DUMMY_BYTES ;
 int EFBIG ;
 int ENOMEM ;
 scalar_t__ HASH_TRANSHDR_SIZE (scalar_t__) ;
 scalar_t__ HMAC ;
 scalar_t__ MAX_REQUEST_SIZE ;
 int SCMD_CIPH_MODE_NOP ;
 scalar_t__ SCMD_HMAC_CTRL_NOP ;
 scalar_t__ SCMD_HMAC_CTRL_NO_TRUNC ;
 int SCMD_PROTO_VERSION_GENERIC ;
 scalar_t__ SGE_MAX_WR_LEN ;
 int V_CPL_TX_SEC_PDU_ACKFOLLOWS (int ) ;
 int V_CPL_TX_SEC_PDU_AUTHSTART (int) ;
 int V_CPL_TX_SEC_PDU_AUTHSTOP (int ) ;
 int V_CPL_TX_SEC_PDU_CPLLEN (int) ;
 int V_CPL_TX_SEC_PDU_IVINSRTOFST (int ) ;
 int V_CPL_TX_SEC_PDU_OPCODE (int ) ;
 int V_CPL_TX_SEC_PDU_PLACEHOLDER (int ) ;
 int V_CPL_TX_SEC_PDU_RXCHID (int ) ;
 int V_CPL_TX_SEC_PDU_ULPTXLPBK (int) ;
 int V_KEY_CONTEXT_CK_SIZE (int ) ;
 int V_KEY_CONTEXT_CTX_LEN (scalar_t__) ;
 int V_KEY_CONTEXT_MK_SIZE (int ) ;
 int V_KEY_CONTEXT_OPAD_PRESENT (int) ;
 int V_KEY_CONTEXT_SALT_PRESENT (int) ;
 int V_KEY_CONTEXT_VALID (int) ;
 int V_SCMD_AUTH_MODE (int ) ;
 int V_SCMD_CIPH_MODE (int ) ;
 int V_SCMD_HMAC_CTRL (scalar_t__) ;
 int V_SCMD_LAST_FRAG (int ) ;
 int V_SCMD_MAC_ONLY (int) ;
 int V_SCMD_MORE_FRAGS (int) ;
 int V_SCMD_PROTO_VERSION (int ) ;
 int V_SCMD_SEQ_NO_CTRL (int ) ;
 struct wrqe* alloc_wrqe (scalar_t__,int ) ;
 int ccr_populate_wreq (struct ccr_softc*,struct chcr_wr*,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__,struct cryptop*) ;
 int ccr_ulptx_sgl_len (int) ;
 scalar_t__ ccr_use_imm_data (scalar_t__,scalar_t__) ;
 int ccr_write_ulptx_sgl (struct ccr_softc*,char*,int) ;
 int crypto_copydata (int ,int ,int ,int,char*) ;
 void* htobe32 (int) ;
 int htobe64 (int) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct chcr_wr*,int ,scalar_t__) ;
 scalar_t__ roundup2 (scalar_t__,int) ;
 int sglist_append_sglist (TYPE_4__*,int ,int ,scalar_t__) ;
 int sglist_reset (TYPE_4__*) ;
 int t4_wrq_tx (int ,struct wrqe*) ;
 struct chcr_wr* wrtod (struct wrqe*) ;

__attribute__((used)) static int
ccr_hash(struct ccr_softc *sc, struct ccr_session *s, struct cryptop *crp)
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


 iopad_size = roundup2(s->hmac.partial_digest_len, 16);





 kctx_len = iopad_size;
 if (use_opad)
  kctx_len += iopad_size;
 hash_size_in_response = axf->hashsize;
 transhdr_len = HASH_TRANSHDR_SIZE(kctx_len);

 if (crd->crd_len == 0) {
  imm_len = axf->blocksize;
  sgl_nsegs = 0;
  sgl_len = 0;
 } else if (ccr_use_imm_data(transhdr_len, crd->crd_len)) {
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

 wr_len = roundup2(transhdr_len, 16) + roundup2(imm_len, 16) + sgl_len;
 if (wr_len > SGE_MAX_WR_LEN)
  return (EFBIG);
 wr = alloc_wrqe(wr_len, sc->txq);
 if (wr == ((void*)0)) {
  sc->stats_wr_nomem++;
  return (ENOMEM);
 }
 crwr = wrtod(wr);
 memset(crwr, 0, wr_len);

 ccr_populate_wreq(sc, crwr, kctx_len, wr_len, imm_len, sgl_len,
     hash_size_in_response, crp);


 crwr->sec_cpl.op_ivinsrtofst = htobe32(
     V_CPL_TX_SEC_PDU_OPCODE(CPL_TX_SEC_PDU) |
     V_CPL_TX_SEC_PDU_RXCHID(sc->tx_channel_id) |
     V_CPL_TX_SEC_PDU_ACKFOLLOWS(0) | V_CPL_TX_SEC_PDU_ULPTXLPBK(1) |
     V_CPL_TX_SEC_PDU_CPLLEN(2) | V_CPL_TX_SEC_PDU_PLACEHOLDER(0) |
     V_CPL_TX_SEC_PDU_IVINSRTOFST(0));

 crwr->sec_cpl.pldlen = htobe32(crd->crd_len == 0 ? axf->blocksize :
     crd->crd_len);

 crwr->sec_cpl.cipherstop_lo_authinsert = htobe32(
     V_CPL_TX_SEC_PDU_AUTHSTART(1) | V_CPL_TX_SEC_PDU_AUTHSTOP(0));


 crwr->sec_cpl.seqno_numivs = htobe32(
     V_SCMD_SEQ_NO_CTRL(0) |
     V_SCMD_PROTO_VERSION(SCMD_PROTO_VERSION_GENERIC) |
     V_SCMD_CIPH_MODE(SCMD_CIPH_MODE_NOP) |
     V_SCMD_AUTH_MODE(s->hmac.auth_mode) |
     V_SCMD_HMAC_CTRL(hmac_ctrl));
 crwr->sec_cpl.ivgen_hdrlen = htobe32(
     V_SCMD_LAST_FRAG(0) |
     V_SCMD_MORE_FRAGS(crd->crd_len == 0 ? 1 : 0) | V_SCMD_MAC_ONLY(1));

 memcpy(crwr->key_ctx.key, s->hmac.pads, kctx_len);


 kctx_flits = (sizeof(struct _key_ctx) + kctx_len) / 16;
 crwr->key_ctx.ctx_hdr = htobe32(V_KEY_CONTEXT_CTX_LEN(kctx_flits) |
     V_KEY_CONTEXT_OPAD_PRESENT(use_opad) |
     V_KEY_CONTEXT_SALT_PRESENT(1) |
     V_KEY_CONTEXT_CK_SIZE(CHCR_KEYCTX_NO_KEY) |
     V_KEY_CONTEXT_MK_SIZE(s->hmac.mk_size) | V_KEY_CONTEXT_VALID(1));

 dst = (char *)(crwr + 1) + kctx_len + DUMMY_BYTES;
 if (crd->crd_len == 0) {
  dst[0] = 0x80;
  if (s->mode == HMAC)
   *(uint64_t *)(dst + axf->blocksize - sizeof(uint64_t)) =
       htobe64(axf->blocksize << 3);
 } else if (imm_len != 0)
  crypto_copydata(crp->crp_flags, crp->crp_buf, crd->crd_skip,
      crd->crd_len, dst);
 else
  ccr_write_ulptx_sgl(sc, dst, sgl_nsegs);


 t4_wrq_tx(sc->adapter, wr);

 return (0);
}
