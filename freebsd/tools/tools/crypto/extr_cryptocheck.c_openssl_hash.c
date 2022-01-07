
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alg {int name; } ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int EVP_DigestFinal_ex (int *,void*,unsigned int*) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,void const*,size_t) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int errx (int,char*,int ,char const*,int ) ;

__attribute__((used)) static void
openssl_hash(struct alg *alg, const EVP_MD *md, const void *buffer,
    size_t size, void *digest_out, unsigned *digest_sz_out)
{
 EVP_MD_CTX *mdctx;
 const char *errs;
 int rc;

 errs = "";

 mdctx = EVP_MD_CTX_create();
 if (mdctx == ((void*)0))
  goto err_out;

 rc = EVP_DigestInit_ex(mdctx, md, ((void*)0));
 if (rc != 1)
  goto err_out;

 rc = EVP_DigestUpdate(mdctx, buffer, size);
 if (rc != 1)
  goto err_out;

 rc = EVP_DigestFinal_ex(mdctx, digest_out, digest_sz_out);
 if (rc != 1)
  goto err_out;

 EVP_MD_CTX_destroy(mdctx);
 return;

err_out:
 errx(1, "OpenSSL %s HASH failed%s: %s", alg->name, errs,
     ERR_error_string(ERR_get_error(), ((void*)0)));
}
