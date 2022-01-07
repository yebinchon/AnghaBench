
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct xlp_sec_softc {int dummy; } ;
struct xlp_sec_command {scalar_t__ cipheralg; int cipherlen; int cipheroff; int ivlen; int ivoff; int paramp; int ctrlp; int ciphermode; scalar_t__ des3key; struct cryptodesc* enccrd; } ;
struct cryptodesc {int crd_flags; int crd_klen; scalar_t__ crd_key; } ;


 int CRD_F_ENCRYPT ;
 scalar_t__ NLM_CIPHER_3DES ;
 int NLM_HASH_BYPASS ;
 int nlm_crypto_complete_sec_request (struct xlp_sec_softc*,struct xlp_sec_command*) ;
 int nlm_crypto_fill_cipher_pkt_param (int ,int ,int,int ,int ,int ,int ) ;
 int nlm_crypto_fill_pkt_ctrl (int ,int ,int ,int ,scalar_t__,int ,unsigned char*,int,int *,int ) ;
 int nlm_crypto_form_srcdst_segs (struct xlp_sec_command*) ;

int
nlm_crypto_do_cipher(struct xlp_sec_softc *sc, struct xlp_sec_command *cmd)
{
 struct cryptodesc *cipdesc = ((void*)0);
 unsigned char *cipkey = ((void*)0);
 int ret = 0;

 cipdesc = cmd->enccrd;
 cipkey = (unsigned char *)cipdesc->crd_key;
 if (cmd->cipheralg == NLM_CIPHER_3DES) {
  if (!(cipdesc->crd_flags & CRD_F_ENCRYPT)) {
                        uint64_t *k, *tkey;
   k = (uint64_t *)cipdesc->crd_key;
   tkey = (uint64_t *)cmd->des3key;
   tkey[2] = k[0];
   tkey[1] = k[1];
   tkey[0] = k[2];
   cipkey = (unsigned char *)tkey;
  }
 }
 nlm_crypto_fill_pkt_ctrl(cmd->ctrlp, 0, NLM_HASH_BYPASS, 0,
     cmd->cipheralg, cmd->ciphermode, cipkey,
     (cipdesc->crd_klen >> 3), ((void*)0), 0);

 nlm_crypto_fill_cipher_pkt_param(cmd->ctrlp, cmd->paramp,
     (cipdesc->crd_flags & CRD_F_ENCRYPT) ? 1 : 0, cmd->ivoff,
     cmd->ivlen, cmd->cipheroff, cmd->cipherlen);
 nlm_crypto_form_srcdst_segs(cmd);

 ret = nlm_crypto_complete_sec_request(sc, cmd);
 return (ret);
}
