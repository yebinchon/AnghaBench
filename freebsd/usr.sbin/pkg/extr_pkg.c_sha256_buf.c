
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA256_CTX ;


 int SHA256_DIGEST_LENGTH ;
 int SHA256_Final (unsigned char*,int *) ;
 int SHA256_Init (int *) ;
 int SHA256_Update (int *,char*,size_t) ;
 int sha256_hash (unsigned char*,char*) ;

__attribute__((used)) static void
sha256_buf(char *buf, size_t len, char out[SHA256_DIGEST_LENGTH * 2 + 1])
{
 unsigned char hash[SHA256_DIGEST_LENGTH];
 SHA256_CTX sha256;

 out[0] = '\0';

 SHA256_Init(&sha256);
 SHA256_Update(&sha256, buf, len);
 SHA256_Final(hash, &sha256);
 sha256_hash(hash, out);
}
