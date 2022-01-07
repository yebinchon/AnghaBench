
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct g_bde_key {int mkey; int salt; int spare; int * lsector; int flags; int sectorsize; int keyoffset; int sectorN; int sector0; } ;
typedef int MD5_CTX ;


 int G_BDE_LOCKSIZE ;
 int MD5Final (char*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,char*,int) ;
 int NLOCK_FIELDS ;
 int bcopy (int ,char*,int) ;
 int bzero (char*,int) ;
 int g_bde_shuffle_lock (char*,int*) ;
 int le32enc (char*,int ) ;
 int le64enc (char*,int ) ;

int
g_bde_encode_lock(u_char *sha2, struct g_bde_key *gl, u_char *ptr)
{
 int shuffle[NLOCK_FIELDS];
 u_char *hash, *p;
 int i;
 MD5_CTX c;

 p = ptr;
 hash = ((void*)0);
 g_bde_shuffle_lock(sha2, shuffle);
 for (i = 0; i < NLOCK_FIELDS; i++) {
  switch(shuffle[i]) {
  case 0:
   le64enc(p, gl->sector0);
   p += 8;
   break;
  case 1:
   le64enc(p, gl->sectorN);
   p += 8;
   break;
  case 2:
   le64enc(p, gl->keyoffset);
   p += 8;
   break;
  case 3:
   le32enc(p, gl->sectorsize);
   p += 4;
   break;
  case 4:
   le32enc(p, gl->flags);
   p += 4;
   break;
  case 5:
  case 6:
  case 7:
  case 8:
   le64enc(p, gl->lsector[shuffle[i] - 5]);
   p += 8;
   break;
  case 9:
   bcopy(gl->spare, p, sizeof gl->spare);
   p += sizeof gl->spare;
   break;
  case 10:
   bcopy(gl->salt, p, sizeof gl->salt);
   p += sizeof gl->salt;
   break;
  case 11:
   bcopy(gl->mkey, p, sizeof gl->mkey);
   p += sizeof gl->mkey;
   break;
  case 12:
   bzero(p, 16);
   hash = p;
   p += 16;
   break;
  }
 }
 if(ptr + G_BDE_LOCKSIZE != p)
  return(-1);
 if (hash == ((void*)0))
  return(-1);
 MD5Init(&c);
 MD5Update(&c, "0000", 4);
 MD5Update(&c, ptr, G_BDE_LOCKSIZE);
 MD5Final(hash, &c);
 return(0);
}
