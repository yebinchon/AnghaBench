
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef void* u_int32_t ;
struct fcrypt {int dummy; } ;
struct enc_xform {int dummy; } ;
struct csession {int keylen; int mackeylen; struct auth_hash* thash; struct enc_xform* txform; void* mac; void* cipher; int cses; void* mackey; void* key; int lock; } ;
struct auth_hash {int dummy; } ;
typedef int crypto_session_t ;
typedef void* caddr_t ;


 int MTX_DEF ;
 int M_NOWAIT ;
 int M_XDATA ;
 int M_ZERO ;
 int cseadd (struct fcrypt*,struct csession*) ;
 struct csession* malloc (int,int ,int) ;
 int mtx_init (int *,char*,char*,int ) ;

struct csession *
csecreate(struct fcrypt *fcr, crypto_session_t cses, caddr_t key, u_int64_t keylen,
    caddr_t mackey, u_int64_t mackeylen, u_int32_t cipher, u_int32_t mac,
    struct enc_xform *txform, struct auth_hash *thash)
{
 struct csession *cse;

 cse = malloc(sizeof(struct csession), M_XDATA, M_NOWAIT | M_ZERO);
 if (cse == ((void*)0))
  return ((void*)0);
 mtx_init(&cse->lock, "cryptodev", "crypto session lock", MTX_DEF);
 cse->key = key;
 cse->keylen = keylen/8;
 cse->mackey = mackey;
 cse->mackeylen = mackeylen/8;
 cse->cses = cses;
 cse->cipher = cipher;
 cse->mac = mac;
 cse->txform = txform;
 cse->thash = thash;
 cseadd(fcr, cse);
 return (cse);
}
