
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alg {scalar_t__ type; char* name; int evp_md; int evp_cipher; int mac; int cipher; } ;
typedef int authenc ;


 scalar_t__ T_AUTHENC ;
 scalar_t__ T_BLKCIPHER ;
 scalar_t__ T_HMAC ;
 int asprintf (char**,char*,char*,char*) ;
 int assert (int) ;
 int memset (struct alg*,int ,int) ;

__attribute__((used)) static struct alg *
build_authenc(struct alg *cipher, struct alg *hmac)
{
 static struct alg authenc;
 char *name;

 assert(cipher->type == T_BLKCIPHER);
 assert(hmac->type == T_HMAC);
 memset(&authenc, 0, sizeof(authenc));
 asprintf(&name, "%s+%s", cipher->name, hmac->name);
 authenc.name = name;
 authenc.cipher = cipher->cipher;
 authenc.mac = hmac->mac;
 authenc.type = T_AUTHENC;
 authenc.evp_cipher = cipher->evp_cipher;
 authenc.evp_md = hmac->evp_md;
 return (&authenc);
}
