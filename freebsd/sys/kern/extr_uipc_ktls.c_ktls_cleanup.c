
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int auth_key_len; int cipher_key_len; int * iv; int * cipher_key; int * auth_key; int cipher_algorithm; } ;
struct ktls_session {int mode; TYPE_1__ params; int snd_tag; int (* free ) (struct ktls_session*) ;int * be; } ;




 int MPASS (int ) ;
 int M_KTLS ;



 int counter_u64_add (int ,int) ;
 int explicit_bzero (int *,int) ;
 int free (int *,int ) ;
 int ktls_ifnet_cbc ;
 int ktls_ifnet_gcm ;
 int ktls_offload_active ;
 int ktls_sw_cbc ;
 int ktls_sw_gcm ;
 int ktls_toe_cbc ;
 int ktls_toe_gcm ;
 int m_snd_tag_rele (int ) ;
 int stub1 (struct ktls_session*) ;

__attribute__((used)) static void
ktls_cleanup(struct ktls_session *tls)
{

 counter_u64_add(ktls_offload_active, -1);
 switch (tls->mode) {
 case 129:
  MPASS(tls->be != ((void*)0));
  switch (tls->params.cipher_algorithm) {
  case 132:
   counter_u64_add(ktls_sw_cbc, -1);
   break;
  case 131:
   counter_u64_add(ktls_sw_gcm, -1);
   break;
  }
  tls->free(tls);
  break;
 case 130:
  switch (tls->params.cipher_algorithm) {
  case 132:
   counter_u64_add(ktls_ifnet_cbc, -1);
   break;
  case 131:
   counter_u64_add(ktls_ifnet_gcm, -1);
   break;
  }
  m_snd_tag_rele(tls->snd_tag);
  break;
 }
 if (tls->params.auth_key != ((void*)0)) {
  explicit_bzero(tls->params.auth_key, tls->params.auth_key_len);
  free(tls->params.auth_key, M_KTLS);
  tls->params.auth_key = ((void*)0);
  tls->params.auth_key_len = 0;
 }
 if (tls->params.cipher_key != ((void*)0)) {
  explicit_bzero(tls->params.cipher_key,
      tls->params.cipher_key_len);
  free(tls->params.cipher_key, M_KTLS);
  tls->params.cipher_key = ((void*)0);
  tls->params.cipher_key_len = 0;
 }
 explicit_bzero(tls->params.iv, sizeof(tls->params.iv));
}
