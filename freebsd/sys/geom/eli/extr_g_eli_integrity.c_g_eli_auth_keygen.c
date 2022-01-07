
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;
struct g_eli_softc {int sc_akeyctx; } ;
typedef int offset ;
typedef int off_t ;
typedef int ctx ;
typedef int SHA256_CTX ;


 int SHA256_Final (int *,int *) ;
 int SHA256_Update (int *,int *,int) ;
 int bcopy (int *,int *,int) ;

__attribute__((used)) static void
g_eli_auth_keygen(struct g_eli_softc *sc, off_t offset, u_char *key)
{
 SHA256_CTX ctx;


 bcopy(&sc->sc_akeyctx, &ctx, sizeof(ctx));
 SHA256_Update(&ctx, (uint8_t *)&offset, sizeof(offset));
 SHA256_Final(key, &ctx);
}
