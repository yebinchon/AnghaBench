
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int test_digest ;
struct alg {char* name; int * (* evp_md ) () ;} ;
typedef int control_digest ;
typedef int EVP_MD ;


 int EVP_MAX_MD_SIZE ;
 int EVP_MD_size (int const*) ;
 char* alloc_buffer (size_t) ;
 int assert (int) ;
 char* crfind (int) ;
 int free (char*) ;
 int hexdump (char*,int,int *,int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (char*,int,int) ;
 int ocf_hash (struct alg*,char*,size_t,char*,int*) ;
 int openssl_hash (struct alg*,int const*,char*,size_t,char*,int*) ;
 int printf (char*,...) ;
 int * stub1 () ;
 scalar_t__ verbose ;

__attribute__((used)) static void
run_hash_test(struct alg *alg, size_t size)
{
 const EVP_MD *md;
 char *buffer;
 u_int digest_len;
 int crid;
 char control_digest[EVP_MAX_MD_SIZE], test_digest[EVP_MAX_MD_SIZE];

 memset(control_digest, 0x3c, sizeof(control_digest));
 memset(test_digest, 0x3c, sizeof(test_digest));

 md = alg->evp_md();
 assert(EVP_MD_size(md) <= sizeof(control_digest));

 buffer = alloc_buffer(size);


 digest_len = sizeof(control_digest);
 openssl_hash(alg, md, buffer, size, control_digest, &digest_len);


 if (!ocf_hash(alg, buffer, size, test_digest, &crid))
  goto out;
 if (memcmp(control_digest, test_digest, sizeof(control_digest)) != 0) {
  if (memcmp(control_digest, test_digest, EVP_MD_size(md)) == 0)
   printf("%s (%zu) mismatch in trailer:\n",
       alg->name, size);
  else
   printf("%s (%zu) mismatch:\n", alg->name, size);
  printf("control:\n");
  hexdump(control_digest, sizeof(control_digest), ((void*)0), 0);
  printf("test (cryptodev device %s):\n", crfind(crid));
  hexdump(test_digest, sizeof(test_digest), ((void*)0), 0);
  goto out;
 }

 if (verbose)
  printf("%s (%zu) matched (cryptodev device %s)\n",
      alg->name, size, crfind(crid));

out:
 free(buffer);
}
