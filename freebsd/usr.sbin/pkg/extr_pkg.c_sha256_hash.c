
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHA256_DIGEST_LENGTH ;
 int sprintf (char*,char*,unsigned char) ;

__attribute__((used)) static void
sha256_hash(unsigned char hash[SHA256_DIGEST_LENGTH],
    char out[SHA256_DIGEST_LENGTH * 2 + 1])
{
 int i;

 for (i = 0; i < SHA256_DIGEST_LENGTH; i++)
  sprintf(out + (i * 2), "%02x", hash[i]);

 out[SHA256_DIGEST_LENGTH * 2] = '\0';
}
