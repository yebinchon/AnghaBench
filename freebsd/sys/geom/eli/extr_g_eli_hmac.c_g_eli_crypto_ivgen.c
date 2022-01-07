
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ u_char ;
struct g_eli_softc {int sc_flags; int sc_ealgo; scalar_t__ sc_ivctx; } ;
typedef scalar_t__ off_t ;
typedef int off ;
typedef int hash ;
typedef int ctx ;
typedef scalar_t__ SHA256_CTX ;



 int G_ELI_FLAG_NATIVE_BYTE_ORDER ;
 int MIN (int,size_t) ;
 int SHA256_DIGEST_LENGTH ;
 int SHA256_Final (scalar_t__*,scalar_t__*) ;
 int SHA256_Update (scalar_t__*,scalar_t__*,int) ;
 int bcopy (scalar_t__*,scalar_t__*,int) ;
 int bzero (scalar_t__*,size_t) ;
 int le64enc (scalar_t__*,int ) ;

void
g_eli_crypto_ivgen(struct g_eli_softc *sc, off_t offset, u_char *iv,
    size_t size)
{
 uint8_t off[8];

 if ((sc->sc_flags & G_ELI_FLAG_NATIVE_BYTE_ORDER) != 0)
  bcopy(&offset, off, sizeof(off));
 else
  le64enc(off, (uint64_t)offset);

 switch (sc->sc_ealgo) {
 case 128:
  bcopy(off, iv, sizeof(off));
  bzero(iv + sizeof(off), size - sizeof(off));
  break;
 default:
     {
  u_char hash[SHA256_DIGEST_LENGTH];
  SHA256_CTX ctx;


  bcopy(&sc->sc_ivctx, &ctx, sizeof(ctx));
  SHA256_Update(&ctx, off, sizeof(off));
  SHA256_Final(hash, &ctx);
  bcopy(hash, iv, MIN(sizeof(hash), size));
  break;
     }
 }
}
