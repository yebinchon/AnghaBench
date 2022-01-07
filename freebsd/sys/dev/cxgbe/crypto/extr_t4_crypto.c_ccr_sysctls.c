
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ccr_softc {int stats_sw_fallback; int stats_process_error; int stats_sglist_error; int stats_bad_session; int stats_pad_error; int stats_mac_error; int stats_inflight; int stats_wr_nomem; int stats_ccm_decrypt; int stats_ccm_encrypt; int stats_gcm_decrypt; int stats_gcm_encrypt; int stats_authenc_decrypt; int stats_authenc_encrypt; int stats_blkcipher_decrypt; int stats_blkcipher_encrypt; int stats_hmac; int stats_hash; int dev; } ;


 int CTLFLAG_RD ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_U64 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
ccr_sysctls(struct ccr_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *oid;
 struct sysctl_oid_list *children;

 ctx = device_get_sysctl_ctx(sc->dev);




 oid = device_get_sysctl_tree(sc->dev);
 children = SYSCTL_CHILDREN(oid);




 oid = SYSCTL_ADD_NODE(ctx, children, OID_AUTO, "stats", CTLFLAG_RD,
     ((void*)0), "statistics");
 children = SYSCTL_CHILDREN(oid);

 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "hash", CTLFLAG_RD,
     &sc->stats_hash, 0, "Hash requests submitted");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "hmac", CTLFLAG_RD,
     &sc->stats_hmac, 0, "HMAC requests submitted");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "cipher_encrypt", CTLFLAG_RD,
     &sc->stats_blkcipher_encrypt, 0,
     "Cipher encryption requests submitted");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "cipher_decrypt", CTLFLAG_RD,
     &sc->stats_blkcipher_decrypt, 0,
     "Cipher decryption requests submitted");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "authenc_encrypt", CTLFLAG_RD,
     &sc->stats_authenc_encrypt, 0,
     "Combined AES+HMAC encryption requests submitted");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "authenc_decrypt", CTLFLAG_RD,
     &sc->stats_authenc_decrypt, 0,
     "Combined AES+HMAC decryption requests submitted");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "gcm_encrypt", CTLFLAG_RD,
     &sc->stats_gcm_encrypt, 0, "AES-GCM encryption requests submitted");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "gcm_decrypt", CTLFLAG_RD,
     &sc->stats_gcm_decrypt, 0, "AES-GCM decryption requests submitted");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "ccm_encrypt", CTLFLAG_RD,
     &sc->stats_ccm_encrypt, 0, "AES-CCM encryption requests submitted");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "ccm_decrypt", CTLFLAG_RD,
     &sc->stats_ccm_decrypt, 0, "AES-CCM decryption requests submitted");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "wr_nomem", CTLFLAG_RD,
     &sc->stats_wr_nomem, 0, "Work request memory allocation failures");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "inflight", CTLFLAG_RD,
     &sc->stats_inflight, 0, "Requests currently pending");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "mac_error", CTLFLAG_RD,
     &sc->stats_mac_error, 0, "MAC errors");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "pad_error", CTLFLAG_RD,
     &sc->stats_pad_error, 0, "Padding errors");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "bad_session", CTLFLAG_RD,
     &sc->stats_bad_session, 0, "Requests with invalid session ID");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "sglist_error", CTLFLAG_RD,
     &sc->stats_sglist_error, 0,
     "Requests for which DMA mapping failed");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "process_error", CTLFLAG_RD,
     &sc->stats_process_error, 0, "Requests failed during queueing");
 SYSCTL_ADD_U64(ctx, children, OID_AUTO, "sw_fallback", CTLFLAG_RD,
     &sc->stats_sw_fallback, 0,
     "Requests processed by falling back to software");
}
