
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alg {int dummy; } ;


 struct alg* build_authenc (struct alg*,struct alg*) ;
 int errx (int,char*,char const*) ;
 struct alg* find_alg (char const*) ;
 int free (char*) ;
 char* strchr (char const*,char) ;
 char* strndup (char const*,int) ;

__attribute__((used)) static struct alg *
build_authenc_name(const char *name)
{
 struct alg *cipher, *hmac;
 const char *hmac_name;
 char *cp, *cipher_name;

 cp = strchr(name, '+');
 cipher_name = strndup(name, cp - name);
 hmac_name = cp + 1;
 cipher = find_alg(cipher_name);
 free(cipher_name);
 if (cipher == ((void*)0))
  errx(1, "Invalid cipher %s", cipher_name);
 hmac = find_alg(hmac_name);
 if (hmac == ((void*)0))
  errx(1, "Invalid hash %s", hmac_name);
 return (build_authenc(cipher, hmac));
}
