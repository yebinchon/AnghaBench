
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SHA512; int SHA256; int SHA1; int RIPEMD160; int MD5; } ;
typedef TYPE_1__ DIGEST_CTX ;
 int MD5Update (int *,char const*,size_t) ;
 int RIPEMD160_Update (int *,char const*,size_t) ;
 int SHA1_Update (int *,char const*,size_t) ;
 int SHA256_Update (int *,char const*,size_t) ;
 int SHA512_Update (int *,char const*,size_t) ;
 int digesttype ;

__attribute__((used)) static void
digest_update(DIGEST_CTX *c, const char *data, size_t len)
{

 switch (digesttype) {
 case 132:
  break;
 case 133:
  MD5Update(&(c->MD5), data, len);
  break;
 case 131:
  RIPEMD160_Update(&(c->RIPEMD160), data, len);
  break;
 case 130:
  SHA1_Update(&(c->SHA1), data, len);
  break;
 case 129:
  SHA256_Update(&(c->SHA256), data, len);
  break;
 case 128:
  SHA512_Update(&(c->SHA512), data, len);
  break;
 }
}
