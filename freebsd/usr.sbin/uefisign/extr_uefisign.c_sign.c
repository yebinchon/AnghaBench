
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int PKCS7_SIGNER_INFO ;
typedef int PKCS7 ;
typedef int EVP_PKEY ;
typedef int EVP_MD ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 size_t BIO_get_mem_data (int *,void**) ;
 int * BIO_new (int ) ;
 int * BIO_new_mem_buf (void*,size_t) ;
 int BIO_s_file () ;
 int BIO_s_mem () ;
 int BIO_set_close (int *,int ) ;
 int BIO_set_fp (int *,int ,int ) ;
 int DIGEST ;
 int ERR_print_errors_fp (int ) ;
 int * EVP_get_digestbyname (int ) ;
 int NID_pkcs9_contentType ;
 int OBJ_txt2obj (char*,int) ;
 int PKCS7_BINARY ;
 int PKCS7_PARTIAL ;
 int PKCS7_add_signed_attribute (int *,int ,int ,int ) ;
 int PKCS7_print_ctx (int *,int *,int ,int *) ;
 int * PKCS7_sign (int *,int *,int *,int *,int) ;
 int * PKCS7_sign_add_signer (int *,int *,int *,int const*,int ) ;
 int V_ASN1_OBJECT ;
 int assert (int ) ;
 int errx (int,char*,...) ;
 int i2d_PKCS7_bio (int *,int *) ;
 int magic (int *,void*,size_t) ;
 int receive_chunk (void**,size_t*,int) ;
 int send_chunk (void*,size_t,int) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
sign(X509 *cert, EVP_PKEY *key, int pipefd)
{
 PKCS7 *pkcs7;
 BIO *bio, *out;
 const EVP_MD *md;
 PKCS7_SIGNER_INFO *info;
 void *digest, *signature;
 size_t digest_len, signature_len;
 int ok;

 assert(cert != ((void*)0));
 assert(key != ((void*)0));

 receive_chunk(&digest, &digest_len, pipefd);

 bio = BIO_new_mem_buf(digest, digest_len);
 if (bio == ((void*)0)) {
  ERR_print_errors_fp(stderr);
  errx(1, "BIO_new_mem_buf(3) failed");
 }

 pkcs7 = PKCS7_sign(((void*)0), ((void*)0), ((void*)0), bio, PKCS7_BINARY | PKCS7_PARTIAL);
 if (pkcs7 == ((void*)0)) {
  ERR_print_errors_fp(stderr);
  errx(1, "PKCS7_sign(3) failed");
 }

 md = EVP_get_digestbyname(DIGEST);
 if (md == ((void*)0)) {
  ERR_print_errors_fp(stderr);
  errx(1, "EVP_get_digestbyname(\"%s\") failed", DIGEST);
 }

 info = PKCS7_sign_add_signer(pkcs7, cert, key, md, 0);
 if (info == ((void*)0)) {
  ERR_print_errors_fp(stderr);
  errx(1, "PKCS7_sign_add_signer(3) failed");
 }





 PKCS7_add_signed_attribute(info, NID_pkcs9_contentType,
     V_ASN1_OBJECT, OBJ_txt2obj("1.3.6.1.4.1.311.2.1.4", 1));

 magic(pkcs7, digest, digest_len);
 out = BIO_new(BIO_s_mem());
 if (out == ((void*)0)) {
  ERR_print_errors_fp(stderr);
  errx(1, "BIO_new(3) failed");
 }

 ok = i2d_PKCS7_bio(out, pkcs7);
 if (ok == 0) {
  ERR_print_errors_fp(stderr);
  errx(1, "i2d_PKCS7_bio(3) failed");
 }

 signature_len = BIO_get_mem_data(out, &signature);
 if (signature_len <= 0) {
  ERR_print_errors_fp(stderr);
  errx(1, "BIO_get_mem_data(3) failed");
 }

 (void)BIO_set_close(out, BIO_NOCLOSE);
 BIO_free(out);

 send_chunk(signature, signature_len, pipefd);
}
