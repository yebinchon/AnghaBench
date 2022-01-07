
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_bde_softc {int sha2; } ;
typedef int SHA512_CTX ;


 int SHA512_Final (int ,int *) ;
 int SHA512_Init (int *) ;
 int SHA512_Update (int *,void const*,int ) ;

void
g_bde_hash_pass(struct g_bde_softc *sc, const void *input, u_int len)
{
 SHA512_CTX cx;

 SHA512_Init(&cx);
 SHA512_Update(&cx, input, len);
 SHA512_Final(sc->sha2, &cx);
}
