
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_sec_softc {int dummy; } ;
struct xlp_sec_command {scalar_t__ hashdest; int hmacpad; int hashlen; int hashoff; int paramp; int ctrlp; int hashmode; int hashalg; struct cryptodesc* maccrd; } ;
struct cryptodesc {int crd_klen; int crd_key; } ;


 int NLM_CIPHER_BYPASS ;
 int nlm_crypto_complete_sec_request (struct xlp_sec_softc*,struct xlp_sec_command*) ;
 int nlm_crypto_fill_auth_pkt_param (int ,int ,int ,int ,int ,unsigned char*) ;
 int nlm_crypto_fill_pkt_ctrl (int ,int,int ,int ,int ,int ,int *,int ,int ,int) ;
 int nlm_crypto_form_srcdst_segs (struct xlp_sec_command*) ;

int
nlm_crypto_do_digest(struct xlp_sec_softc *sc, struct xlp_sec_command *cmd)
{
 struct cryptodesc *digdesc = ((void*)0);
 int ret=0;

 digdesc = cmd->maccrd;

 nlm_crypto_fill_pkt_ctrl(cmd->ctrlp, (digdesc->crd_klen) ? 1 : 0,
     cmd->hashalg, cmd->hashmode, NLM_CIPHER_BYPASS, 0,
     ((void*)0), 0, digdesc->crd_key, digdesc->crd_klen >> 3);

 nlm_crypto_fill_auth_pkt_param(cmd->ctrlp, cmd->paramp,
     cmd->hashoff, cmd->hashlen, cmd->hmacpad,
     (unsigned char *)cmd->hashdest);

 nlm_crypto_form_srcdst_segs(cmd);

 ret = nlm_crypto_complete_sec_request(sc, cmd);

 return (ret);
}
