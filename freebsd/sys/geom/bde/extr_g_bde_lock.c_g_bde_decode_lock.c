
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct g_bde_softc {int sha2; } ;
struct g_bde_key {char* spare; char* salt; char* mkey; void** lsector; void* flags; void* sectorsize; void* keyoffset; void* sectorN; void* sector0; } ;
typedef int MD5_CTX ;


 int G_BDE_LOCKSIZE ;
 int MD5Final (char*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,char*,int) ;
 int NLOCK_FIELDS ;
 scalar_t__ bcmp (char*,char*,int) ;
 int bcopy (char*,char*,int) ;
 int bzero (char*,int) ;
 int g_bde_shuffle_lock (int ,int*) ;
 void* le32dec (char*) ;
 void* le64dec (char*) ;

int
g_bde_decode_lock(struct g_bde_softc *sc, struct g_bde_key *gl, u_char *ptr)
{
 int shuffle[NLOCK_FIELDS];
 u_char *p;
 u_char hash[16], hash2[16];
 MD5_CTX c;
 int i;

 p = ptr;
 g_bde_shuffle_lock(sc->sha2, shuffle);
 for (i = 0; i < NLOCK_FIELDS; i++) {
  switch(shuffle[i]) {
  case 0:
   gl->sector0 = le64dec(p);
   p += 8;
   break;
  case 1:
   gl->sectorN = le64dec(p);
   p += 8;
   break;
  case 2:
   gl->keyoffset = le64dec(p);
   p += 8;
   break;
  case 3:
   gl->sectorsize = le32dec(p);
   p += 4;
   break;
  case 4:
   gl->flags = le32dec(p);
   p += 4;
   break;
  case 5:
  case 6:
  case 7:
  case 8:
   gl->lsector[shuffle[i] - 5] = le64dec(p);
   p += 8;
   break;
  case 9:
   bcopy(p, gl->spare, sizeof gl->spare);
   p += sizeof gl->spare;
   break;
  case 10:
   bcopy(p, gl->salt, sizeof gl->salt);
   p += sizeof gl->salt;
   break;
  case 11:
   bcopy(p, gl->mkey, sizeof gl->mkey);
   p += sizeof gl->mkey;
   break;
  case 12:
   bcopy(p, hash2, sizeof hash2);
   bzero(p, sizeof hash2);
   p += sizeof hash2;
   break;
  }
 }
 if(ptr + G_BDE_LOCKSIZE != p)
  return(-1);
 MD5Init(&c);
 MD5Update(&c, "0000", 4);
 MD5Update(&c, ptr, G_BDE_LOCKSIZE);
 MD5Final(hash, &c);
 if (bcmp(hash, hash2, sizeof hash2))
  return (1);
 return (0);
}
