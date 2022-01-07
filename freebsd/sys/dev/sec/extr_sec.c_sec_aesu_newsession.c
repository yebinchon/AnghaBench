
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_softc {int dummy; } ;
struct sec_session {int ss_ivlen; } ;
struct cryptoini {scalar_t__ cri_alg; } ;


 int AES_BLOCK_LEN ;
 scalar_t__ CRYPTO_AES_CBC ;

__attribute__((used)) static int
sec_aesu_newsession(struct sec_softc *sc, struct sec_session *ses,
    struct cryptoini *enc, struct cryptoini *mac)
{

 if (enc == ((void*)0))
  return (-1);

 if (enc->cri_alg != CRYPTO_AES_CBC)
  return (-1);

 ses->ss_ivlen = AES_BLOCK_LEN;

 return (0);
}
