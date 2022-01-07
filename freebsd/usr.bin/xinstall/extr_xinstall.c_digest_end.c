
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SHA512; int SHA256; int SHA1; int RIPEMD160; int MD5; } ;
typedef TYPE_1__ DIGEST_CTX ;







 char* MD5End (int *,char*) ;
 char* RIPEMD160_End (int *,char*) ;
 char* SHA1_End (int *,char*) ;
 char* SHA256_End (int *,char*) ;
 char* SHA512_End (int *,char*) ;
 int digesttype ;

__attribute__((used)) static char *
digest_end(DIGEST_CTX *c, char *buf)
{

 switch (digesttype) {
 case 132:
  return (MD5End(&(c->MD5), buf));
 case 131:
  return (RIPEMD160_End(&(c->RIPEMD160), buf));
 case 130:
  return (SHA1_End(&(c->SHA1), buf));
 case 129:
  return (SHA256_End(&(c->SHA256), buf));
 case 128:
  return (SHA512_End(&(c->SHA512), buf));
 default:
  return (((void*)0));
 }
}
