
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_softc {int dummy; } ;
struct sec_session {int ss_ivlen; } ;
struct cryptoini {int cri_alg; } ;




 int DES_BLOCK_LEN ;

__attribute__((used)) static int
sec_deu_newsession(struct sec_softc *sc, struct sec_session *ses,
    struct cryptoini *enc, struct cryptoini *mac)
{

 if (enc == ((void*)0))
  return (-1);

 switch (enc->cri_alg) {
 case 128:
 case 129:
  break;
 default:
  return (-1);
 }

 ses->ss_ivlen = DES_BLOCK_LEN;

 return (0);
}
