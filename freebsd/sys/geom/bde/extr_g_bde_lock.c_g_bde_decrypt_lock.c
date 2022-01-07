
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct g_bde_softc {int consumer; int sha2; } ;
typedef int off_t ;


 int EINVAL ;
 int ENOENT ;
 int G_BDE_MAXKEYS ;
 int SHA512_DIGEST_LENGTH ;
 scalar_t__ bcmp (int *,int *,int) ;
 int bcopy (int *,int ,int ) ;
 int bzero (int *,int) ;
 int g_bde_decrypt_lockx (struct g_bde_softc*,int *,int ,int ,int *) ;
 int g_free (int *) ;
 int * g_read_data (int ,int ,int ,int*) ;

int
g_bde_decrypt_lock(struct g_bde_softc *sc, u_char *keymat, u_char *meta, off_t mediasize, u_int sectorsize, u_int *nkey)
{
 u_char *buf, buf1[16];
 int error, e, i;


 bcopy(keymat, sc->sha2, SHA512_DIGEST_LENGTH);


 bzero(buf1, sizeof buf1);
 if (meta != ((void*)0) && bcmp(buf1, meta, sizeof buf1))
  return (g_bde_decrypt_lockx(sc, meta, mediasize,
      sectorsize, nkey));


 buf = g_read_data(sc->consumer, 0, sectorsize, &error);
 if (buf == ((void*)0))
  return(error);


 error = EINVAL;
 for (i = 0; i < G_BDE_MAXKEYS; i++) {
  e = g_bde_decrypt_lockx(sc, buf + i * 16, mediasize,
      sectorsize, nkey);

  if (e == 0 || e == ENOENT) {
   error = e;
   break;
  }
  if (e != 0 && error == EINVAL)
   error = e;
 }
 g_free(buf);
 return (error);
}
