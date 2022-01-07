
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef size_t u_char ;
struct TYPE_2__ {size_t* salt; size_t* mkey; } ;
struct g_bde_softc {TYPE_1__ key; } ;
typedef int off_t ;
typedef int keyInstance ;
typedef size_t MD5_CTX ;


 int AES_makekey (int *,int,int ,size_t*) ;
 int G_BDE_KKEYBITS ;
 int MD5Final (size_t*,size_t*) ;
 int MD5Init (size_t*) ;
 int MD5Update (size_t*,size_t*,int) ;
 int bzero (size_t*,int) ;
 int le64enc (size_t*,int ) ;

__attribute__((used)) static void
g_bde_kkey(struct g_bde_softc *sc, keyInstance *ki, int dir, off_t sector)
{
 u_int t;
 MD5_CTX ct;
 u_char buf[16];
 u_char buf2[8];


 le64enc(buf2, sector);

 MD5Init(&ct);
 MD5Update(&ct, sc->key.salt, 8);
 MD5Update(&ct, buf2, sizeof buf2);
 MD5Update(&ct, sc->key.salt + 8, 8);
 MD5Final(buf, &ct);

 MD5Init(&ct);
 for (t = 0; t < 16; t++) {
  MD5Update(&ct, &sc->key.mkey[buf[t]], 1);
  if (t == 8)
   MD5Update(&ct, buf2, sizeof buf2);
 }
 bzero(buf2, sizeof buf2);
 MD5Final(buf, &ct);
 bzero(&ct, sizeof ct);
 AES_makekey(ki, dir, G_BDE_KKEYBITS, buf);
 bzero(buf, sizeof buf);
}
