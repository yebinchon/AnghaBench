
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD4_CTX ;


 int MD4Final (char*,int *) ;
 int MD4Init (int *) ;
 int MD4Update (int *,char*,int) ;

void
HashNtPasswordHash(char *hash, char *hashhash)
{
  MD4_CTX MD4context;

  MD4Init(&MD4context);
  MD4Update(&MD4context, hash, 16);
  MD4Final(hashhash, &MD4context);
}
