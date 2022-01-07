
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_int ;
typedef scalar_t__ u_char ;
struct g_bde_key {scalar_t__* mkey; scalar_t__* lsector; } ;
struct g_bde_softc {scalar_t__ sha2; int consumer; struct g_bde_key key; } ;
typedef scalar_t__ off_t ;
typedef int keyInstance ;
typedef int cipherInstance ;


 int AES_decrypt (int *,int *,scalar_t__*,scalar_t__*,scalar_t__) ;
 int AES_init (int *) ;
 int AES_makekey (int *,int ,int,scalar_t__) ;
 int DIR_DECRYPT ;
 int EDOOFUS ;
 int EINVAL ;
 int ENOENT ;
 int ENOTDIR ;
 int ESRCH ;
 scalar_t__ G_BDE_LOCKSIZE ;
 int G_BDE_MAXKEYS ;
 int bzero (scalar_t__*,scalar_t__) ;
 int g_bde_decode_lock (struct g_bde_softc*,struct g_bde_key*,scalar_t__*) ;
 int g_bde_keyloc_decrypt (scalar_t__,scalar_t__*,scalar_t__*) ;
 int g_free (scalar_t__*) ;
 scalar_t__* g_read_data (int ,scalar_t__,int,int*) ;

__attribute__((used)) static int
g_bde_decrypt_lockx(struct g_bde_softc *sc, u_char *meta, off_t mediasize, u_int sectorsize, u_int *nkey)
{
 u_char *buf, *q;
 struct g_bde_key *gl;
 uint64_t off, q1;
 int error, m, i;
 keyInstance ki;
 cipherInstance ci;

 gl = &sc->key;


 error = g_bde_keyloc_decrypt(sc->sha2, meta, &off);
 if (error)
  return (error);


 if (off + G_BDE_LOCKSIZE > (uint64_t)mediasize) {
  off = 0;
  return (EINVAL);
 }



 m = 1;
 if (off % sectorsize > sectorsize - G_BDE_LOCKSIZE)
  m++;


 buf = g_read_data(sc->consumer,
  off - (off % sectorsize),
  m * sectorsize, &error);
 if (buf == ((void*)0)) {
  off = 0;
  return(error);
 }


 q = buf + off % sectorsize;


 q1 = 0;
 for (i = 0; i < G_BDE_LOCKSIZE; i++)
  q1 += q[i];
 if (q1 == 0) {
  off = 0;
  g_free(buf);
  return (ESRCH);
 }


 AES_init(&ci);
 AES_makekey(&ki, DIR_DECRYPT, 256, sc->sha2 + 16);
 AES_decrypt(&ci, &ki, q, q, G_BDE_LOCKSIZE);


 i = g_bde_decode_lock(sc, gl, q);
 q = ((void*)0);
 if (i < 0) {
  off = 0;
  return (EDOOFUS);
 } else if (i > 0) {
  off = 0;
  return (ENOTDIR);
 }

 bzero(buf, sectorsize * m);
 g_free(buf);


 q1 = 0;
 for (i = 0; i < (int)sizeof(gl->mkey); i++)
  q1 += gl->mkey[i];
 if (q1 == 0)
  return (ENOENT);


 for (i = 0; i < G_BDE_MAXKEYS - 1; i++)
  if (gl->lsector[i] >= gl->lsector[i + 1])
   return (EINVAL);


 for (i = 0; i < G_BDE_MAXKEYS; i++)
  if (nkey != ((void*)0) && off == gl->lsector[i])
   *nkey = i;
 off = 0;
 return (0);
}
