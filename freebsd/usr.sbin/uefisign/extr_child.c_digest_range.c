
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct executable {scalar_t__ x_buf; } ;
typedef scalar_t__ off_t ;
typedef int EVP_MD_CTX ;


 int ERR_print_errors_fp (int ) ;
 int EVP_DigestUpdate (int *,scalar_t__,size_t) ;
 int errx (int,char*) ;
 int range_check (struct executable*,scalar_t__,size_t,char*) ;
 int stderr ;

__attribute__((used)) static void
digest_range(struct executable *x, EVP_MD_CTX *mdctx, off_t off, size_t len)
{
 int ok;

 range_check(x, off, len, "chunk");

 ok = EVP_DigestUpdate(mdctx, x->x_buf + off, len);
 if (ok == 0) {
  ERR_print_errors_fp(stderr);
  errx(1, "EVP_DigestUpdate(3) failed");
 }
}
