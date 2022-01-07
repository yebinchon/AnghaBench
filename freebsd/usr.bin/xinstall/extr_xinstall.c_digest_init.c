
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SHA512; int SHA256; int SHA1; int RIPEMD160; int MD5; } ;
typedef TYPE_1__ DIGEST_CTX ;
 int MD5Init (int *) ;
 int RIPEMD160_Init (int *) ;
 int SHA1_Init (int *) ;
 int SHA256_Init (int *) ;
 int SHA512_Init (int *) ;
 int digesttype ;

__attribute__((used)) static void
digest_init(DIGEST_CTX *c)
{

 switch (digesttype) {
 case 132:
  break;
 case 133:
  MD5Init(&(c->MD5));
  break;
 case 131:
  RIPEMD160_Init(&(c->RIPEMD160));
  break;
 case 130:
  SHA1_Init(&(c->SHA1));
  break;
 case 129:
  SHA256_Init(&(c->SHA256));
  break;
 case 128:
  SHA512_Init(&(c->SHA512));
  break;
 }
}
