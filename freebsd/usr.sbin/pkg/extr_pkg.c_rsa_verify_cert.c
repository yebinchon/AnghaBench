
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;


 int ERR_error_string (int ,char*) ;
 int ERR_free_strings () ;
 int ERR_get_error () ;
 int EVP_DigestVerifyFinal (int *,unsigned char*,int) ;
 int EVP_DigestVerifyInit (int *,int *,int ,int *,int *) ;
 int EVP_DigestVerifyUpdate (int *,char*,int ) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_PKEY_free (int *) ;
 int EVP_sha256 () ;
 int SHA256_DIGEST_LENGTH ;
 int SSL_load_error_strings () ;
 int * load_public_key_buf (unsigned char const*,int) ;
 int * load_public_key_file (char const*) ;
 int lseek (int,int ,int ) ;
 int printf (char*) ;
 int sha256_fd (int,char*) ;
 int strlen (char*) ;
 int warn (char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static bool
rsa_verify_cert(int fd, const char *sigfile, const unsigned char *key,
    int keylen, unsigned char *sig, int siglen)
{
 EVP_MD_CTX *mdctx;
 EVP_PKEY *pkey;
 char sha256[(SHA256_DIGEST_LENGTH * 2) + 2];
 char errbuf[1024];
 bool ret;

 pkey = ((void*)0);
 mdctx = ((void*)0);
 ret = 0;

 SSL_load_error_strings();


 if (lseek(fd, 0, 0) == -1) {
  warn("lseek");
  goto cleanup;
 }
 if ((sha256_fd(fd, sha256)) == -1) {
  warnx("Error creating SHA256 hash for package");
  goto cleanup;
 }

 if (sigfile != ((void*)0)) {
  if ((pkey = load_public_key_file(sigfile)) == ((void*)0)) {
   warnx("Error reading public key");
   goto cleanup;
  }
 } else {
  if ((pkey = load_public_key_buf(key, keylen)) == ((void*)0)) {
   warnx("Error reading public key");
   goto cleanup;
  }
 }


 if ((mdctx = EVP_MD_CTX_create()) == ((void*)0)) {
  warnx("%s", ERR_error_string(ERR_get_error(), errbuf));
  goto error;
 }

 if (EVP_DigestVerifyInit(mdctx, ((void*)0), EVP_sha256(), ((void*)0), pkey) != 1) {
  warnx("%s", ERR_error_string(ERR_get_error(), errbuf));
  goto error;
 }
 if (EVP_DigestVerifyUpdate(mdctx, sha256, strlen(sha256)) != 1) {
  warnx("%s", ERR_error_string(ERR_get_error(), errbuf));
  goto error;
 }

 if (EVP_DigestVerifyFinal(mdctx, sig, siglen) != 1) {
  warnx("%s", ERR_error_string(ERR_get_error(), errbuf));
  goto error;
 }

 ret = 1;
 printf("done\n");
 goto cleanup;

error:
 printf("failed\n");

cleanup:
 if (pkey)
  EVP_PKEY_free(pkey);
 if (mdctx)
  EVP_MD_CTX_destroy(mdctx);
 ERR_free_strings();

 return (ret);
}
