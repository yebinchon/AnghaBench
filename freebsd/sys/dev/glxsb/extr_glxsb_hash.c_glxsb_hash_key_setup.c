
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxsb_session {int ses_octx; int ses_ictx; struct auth_hash* ses_axf; } ;
struct auth_hash {int blocksize; int (* Update ) (int ,int*,int) ;int (* Init ) (int ) ;} ;
typedef int* caddr_t ;


 int HMAC_IPAD_VAL ;
 int HMAC_OPAD_VAL ;
 int* hmac_ipad_buffer ;
 int* hmac_opad_buffer ;
 int stub1 (int ) ;
 int stub2 (int ,int*,int) ;
 int stub3 (int ,int*,int) ;
 int stub4 (int ) ;
 int stub5 (int ,int*,int) ;
 int stub6 (int ,int*,int) ;

__attribute__((used)) static void
glxsb_hash_key_setup(struct glxsb_session *ses, caddr_t key, int klen)
{
 struct auth_hash *axf;
 int i;

 klen /= 8;
 axf = ses->ses_axf;

 for (i = 0; i < klen; i++)
  key[i] ^= HMAC_IPAD_VAL;

 axf->Init(ses->ses_ictx);
 axf->Update(ses->ses_ictx, key, klen);
 axf->Update(ses->ses_ictx, hmac_ipad_buffer, axf->blocksize - klen);

 for (i = 0; i < klen; i++)
  key[i] ^= (HMAC_IPAD_VAL ^ HMAC_OPAD_VAL);

 axf->Init(ses->ses_octx);
 axf->Update(ses->ses_octx, key, klen);
 axf->Update(ses->ses_octx, hmac_opad_buffer, axf->blocksize - klen);

 for (i = 0; i < klen; i++)
  key[i] ^= HMAC_OPAD_VAL;
}
