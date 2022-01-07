
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int id ;
typedef int MD5_CTX ;


 size_t CHAP_DIGEST_LEN ;
 int MD5Final (void*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,void const*,size_t) ;
 int assert (int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
chap_compute_md5(const char id, const char *secret,
    const void *challenge, size_t challenge_len, void *response,
    size_t response_len)
{
 MD5_CTX ctx;

 assert(response_len == CHAP_DIGEST_LEN);

 MD5Init(&ctx);
 MD5Update(&ctx, &id, sizeof(id));
 MD5Update(&ctx, secret, strlen(secret));
 MD5Update(&ctx, challenge, challenge_len);
 MD5Final(response, &ctx);
}
