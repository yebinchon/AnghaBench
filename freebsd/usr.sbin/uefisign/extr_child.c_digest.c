
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct executable {size_t x_checksum_off; size_t x_checksum_len; size_t x_certificate_entry_off; size_t x_certificate_entry_len; size_t x_headers_len; int x_nsections; size_t* x_section_off; size_t* x_section_len; size_t x_len; int x_digest_len; int x_digest; } ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int DIGEST ;
 int ERR_print_errors_fp (int ) ;
 int EVP_DigestFinal_ex (int *,int ,int *) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int * EVP_get_digestbyname (int ) ;
 int digest_range (struct executable*,int *,size_t,size_t) ;
 int errx (int,char*,...) ;
 size_t signature_size (struct executable*) ;
 int stderr ;

__attribute__((used)) static void
digest(struct executable *x)
{
 EVP_MD_CTX *mdctx;
 const EVP_MD *md;
 size_t sum_of_bytes_hashed;
 int i, ok;






 md = EVP_get_digestbyname(DIGEST);
 if (md == ((void*)0)) {
  ERR_print_errors_fp(stderr);
  errx(1, "EVP_get_digestbyname(\"%s\") failed", DIGEST);
 }

 mdctx = EVP_MD_CTX_create();
 if (mdctx == ((void*)0)) {
  ERR_print_errors_fp(stderr);
  errx(1, "EVP_MD_CTX_create(3) failed");
 }

 ok = EVP_DigestInit_ex(mdctx, md, ((void*)0));
 if (ok == 0) {
  ERR_print_errors_fp(stderr);
  errx(1, "EVP_DigestInit_ex(3) failed");
 }
 digest_range(x, mdctx, 0, x->x_checksum_off);





 digest_range(x, mdctx, x->x_checksum_off + x->x_checksum_len,
     x->x_certificate_entry_off -
     (x->x_checksum_off + x->x_checksum_len));




 digest_range(x, mdctx,
     x->x_certificate_entry_off + x->x_certificate_entry_len,
     x->x_headers_len -
     (x->x_certificate_entry_off + x->x_certificate_entry_len));






 sum_of_bytes_hashed = x->x_headers_len;
 for (i = 0; i < x->x_nsections; i++) {
  digest_range(x, mdctx,
      x->x_section_off[i], x->x_section_len[i]);
  sum_of_bytes_hashed += x->x_section_len[i];
 }




 if (sum_of_bytes_hashed > x->x_len)
  errx(1, "number of bytes hashed is larger than file size");




 if (sum_of_bytes_hashed < x->x_len) {
  digest_range(x, mdctx, sum_of_bytes_hashed,
      x->x_len - (signature_size(x) + sum_of_bytes_hashed));
 }

 ok = EVP_DigestFinal_ex(mdctx, x->x_digest, &x->x_digest_len);
 if (ok == 0) {
  ERR_print_errors_fp(stderr);
  errx(1, "EVP_DigestFinal_ex(3) failed");
 }

 EVP_MD_CTX_destroy(mdctx);
}
