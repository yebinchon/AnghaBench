
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct xlp_sec_softc {int dummy; } ;
struct xlp_sec_command {scalar_t__ cipheralg; scalar_t__ hashdest; int cipherlen; int cipheroff; int hmacpad; int hashlen; int hashoff; int ivlen; int ivoff; int hashsrc; int paramp; int ctrlp; int ciphermode; int hashmode; int hashalg; scalar_t__ des3key; struct cryptodesc* maccrd; struct cryptodesc* enccrd; } ;
struct cryptodesc {int crd_flags; int crd_klen; scalar_t__ crd_key; } ;


 int CRD_F_ENCRYPT ;
 scalar_t__ NLM_CIPHER_3DES ;
 int nlm_crypto_complete_sec_request (struct xlp_sec_softc*,struct xlp_sec_command*) ;
 int nlm_crypto_fill_cipher_auth_pkt_param (int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,unsigned char*) ;
 int nlm_crypto_fill_pkt_ctrl (int ,int,int ,int ,scalar_t__,int ,unsigned char*,int,scalar_t__,int) ;
 int nlm_crypto_form_srcdst_segs (struct xlp_sec_command*) ;

int
nlm_crypto_do_cipher_digest(struct xlp_sec_softc *sc,
    struct xlp_sec_command *cmd)
{
 struct cryptodesc *cipdesc=((void*)0), *digdesc=((void*)0);
 unsigned char *cipkey = ((void*)0);
 int ret=0;

 cipdesc = cmd->enccrd;
 digdesc = cmd->maccrd;

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
 nlm_crypto_fill_pkt_ctrl(cmd->ctrlp, (digdesc->crd_klen) ? 1 : 0,
     cmd->hashalg, cmd->hashmode, cmd->cipheralg, cmd->ciphermode,
     cipkey, (cipdesc->crd_klen >> 3),
     digdesc->crd_key, (digdesc->crd_klen >> 3));

 nlm_crypto_fill_cipher_auth_pkt_param(cmd->ctrlp, cmd->paramp,
     (cipdesc->crd_flags & CRD_F_ENCRYPT) ? 1 : 0, cmd->hashsrc,
     cmd->ivoff, cmd->ivlen, cmd->hashoff, cmd->hashlen,
     cmd->hmacpad, cmd->cipheroff, cmd->cipherlen,
     (unsigned char *)cmd->hashdest);

 nlm_crypto_form_srcdst_segs(cmd);

 ret = nlm_crypto_complete_sec_request(sc, cmd);
 return (ret);
}
