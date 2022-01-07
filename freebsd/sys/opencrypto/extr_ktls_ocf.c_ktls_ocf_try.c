
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct ocf_session {int crda_alg; int lock; int sid; } ;
struct TYPE_2__ {int cipher_algorithm; int cipher_key_len; scalar_t__ tls_vmajor; scalar_t__ tls_vminor; int cipher_key; int iv_len; } ;
struct ktls_session {int free; int sw_encrypt; struct ocf_session* cipher; TYPE_1__ params; } ;
struct cryptoini {int cri_alg; int cri_klen; struct cryptoini* cri_next; int cri_key; } ;
typedef int crie ;
typedef int cria ;


 int CRYPTO_AES_128_NIST_GMAC ;
 int CRYPTO_AES_256_NIST_GMAC ;

 int CRYPTO_FLAG_HARDWARE ;
 int CRYPTO_FLAG_SOFTWARE ;
 int EINVAL ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int MTX_DEF ;
 int M_KTLS_OCF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TLS_AEAD_GCM_LEN ;
 scalar_t__ TLS_MAJOR_VER_ONE ;
 scalar_t__ TLS_MINOR_VER_ONE ;
 scalar_t__ TLS_MINOR_VER_TWO ;
 int crypto_newsession (int *,struct cryptoini*,int) ;
 int free (struct ocf_session*,int ) ;
 int ktls_ocf_encrypt ;
 int ktls_ocf_free ;
 struct ocf_session* malloc (int,int ,int) ;
 int memset (struct cryptoini*,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
ktls_ocf_try(struct socket *so, struct ktls_session *tls)
{
 struct cryptoini cria, crie;
 struct ocf_session *os;
 int error;

 memset(&cria, 0, sizeof(cria));
 memset(&crie, 0, sizeof(crie));

 switch (tls->params.cipher_algorithm) {
 case 128:
  if (tls->params.iv_len != TLS_AEAD_GCM_LEN)
   return (EINVAL);
  switch (tls->params.cipher_key_len) {
  case 128 / 8:
   cria.cri_alg = CRYPTO_AES_128_NIST_GMAC;
   break;
  case 256 / 8:
   cria.cri_alg = CRYPTO_AES_256_NIST_GMAC;
   break;
  default:
   return (EINVAL);
  }
  cria.cri_key = tls->params.cipher_key;
  cria.cri_klen = tls->params.cipher_key_len * 8;
  break;
 default:
  return (EPROTONOSUPPORT);
 }


 if (tls->params.tls_vmajor != TLS_MAJOR_VER_ONE ||
     tls->params.tls_vminor < TLS_MINOR_VER_ONE ||
     tls->params.tls_vminor > TLS_MINOR_VER_TWO)
  return (EPROTONOSUPPORT);

 os = malloc(sizeof(*os), M_KTLS_OCF, M_NOWAIT | M_ZERO);
 if (os == ((void*)0))
  return (ENOMEM);

 crie.cri_alg = tls->params.cipher_algorithm;
 crie.cri_key = tls->params.cipher_key;
 crie.cri_klen = tls->params.cipher_key_len * 8;

 crie.cri_next = &cria;
 error = crypto_newsession(&os->sid, &crie,
     CRYPTO_FLAG_HARDWARE | CRYPTO_FLAG_SOFTWARE);
 if (error) {
  free(os, M_KTLS_OCF);
  return (error);
 }

 os->crda_alg = cria.cri_alg;
 mtx_init(&os->lock, "ktls_ocf", ((void*)0), MTX_DEF);
 tls->cipher = os;
 tls->sw_encrypt = ktls_ocf_encrypt;
 tls->free = ktls_ocf_free;
 return (0);
}
