
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alg {int type; } ;
 int run_authenc_test (struct alg*,size_t) ;
 int run_blkcipher_test (struct alg*,size_t) ;
 int run_ccm_test (struct alg*,size_t) ;
 int run_gcm_test (struct alg*,size_t) ;
 int run_hash_test (struct alg*,size_t) ;
 int run_hmac_test (struct alg*,size_t) ;

__attribute__((used)) static void
run_test(struct alg *alg, size_t size)
{

 switch (alg->type) {
 case 129:
  run_hash_test(alg, size);
  break;
 case 128:
  run_hmac_test(alg, size);
  break;
 case 132:
  run_blkcipher_test(alg, size);
  break;
 case 133:
  run_authenc_test(alg, size);
  break;
 case 130:
  run_gcm_test(alg, size);
  break;
 case 131:
  run_ccm_test(alg, size);
  break;
 }
}
