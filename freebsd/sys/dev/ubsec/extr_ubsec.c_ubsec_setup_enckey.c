
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubsec_session {int * ses_deskey; } ;
typedef int caddr_t ;


 int CRYPTO_DES_CBC ;
 int SWAP32 (int ) ;
 int bcopy (int ,int *,int) ;

__attribute__((used)) static void
ubsec_setup_enckey(struct ubsec_session *ses, int algo, caddr_t key)
{


 if (algo == CRYPTO_DES_CBC) {
  bcopy(key, &ses->ses_deskey[0], 8);
  bcopy(key, &ses->ses_deskey[2], 8);
  bcopy(key, &ses->ses_deskey[4], 8);
 } else
  bcopy(key, ses->ses_deskey, 24);

 SWAP32(ses->ses_deskey[0]);
 SWAP32(ses->ses_deskey[1]);
 SWAP32(ses->ses_deskey[2]);
 SWAP32(ses->ses_deskey[3]);
 SWAP32(ses->ses_deskey[4]);
 SWAP32(ses->ses_deskey[5]);
}
