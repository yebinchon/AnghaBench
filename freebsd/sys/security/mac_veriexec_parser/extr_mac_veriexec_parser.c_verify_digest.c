
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA256_CTX ;


 int SHA256_DIGEST_LENGTH ;
 int SHA256_Final (unsigned char*,int *) ;
 int SHA256_Init (int *) ;
 int SHA256_Update (int *,char const*,size_t) ;
 int memcmp (unsigned char const*,unsigned char*,int) ;

__attribute__((used)) static int
verify_digest(const char *data, size_t len, const unsigned char *expected_hash)
{
 SHA256_CTX ctx;
 unsigned char hash[SHA256_DIGEST_LENGTH];

 SHA256_Init(&ctx);
 SHA256_Update(&ctx, data, len);
 SHA256_Final(hash, &ctx);

 return (memcmp(expected_hash, hash, SHA256_DIGEST_LENGTH));
}
