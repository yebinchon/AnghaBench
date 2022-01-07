
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD4_CTX ;


 int MD4Final (char*,int *) ;
 int MD4Init (int *) ;
 int MD4Update (int *,char*,int) ;

void
NtPasswordHash(char *key, int keylen, char *hash)
{
  MD4_CTX MD4context;

  MD4Init(&MD4context);
  MD4Update(&MD4context, key, keylen);
  MD4Final(hash, &MD4context);
}
