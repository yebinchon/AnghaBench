
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct smbnode {long n_ino; } ;
typedef int MD5_CTX ;


 int MD5Final (int *,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,char const*,int) ;
 int smbfs_hash (char const*,int) ;

__attribute__((used)) static long
smbfs_getino(struct smbnode *dnp, const char *name, int nmlen)
{
 u_int32_t ino;

 ino = dnp->n_ino + smbfs_hash(name, nmlen);
 if (ino <= 2)
  ino += 3;
 return ino;
}
