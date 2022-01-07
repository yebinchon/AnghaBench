
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct alg {int dummy; } ;


 int CRYPTO_FLAG_HARDWARE ;
 int aad_len ;
 int assert (int) ;
 int atoi (char*) ;
 struct alg* build_authenc_name (char const*) ;
 int crid ;
 int crlookup (char*) ;
 int errx (int,char*,...) ;
 struct alg* find_alg (char const*) ;
 int getopt (int,char**,char*) ;
 size_t nitems (size_t*) ;
 char* optarg ;
 scalar_t__ optind ;
 int run_aead_tests (size_t*,size_t) ;
 int run_authenc_tests (size_t*,size_t) ;
 int run_blkcipher_tests (size_t*,size_t) ;
 int run_hash_tests (size_t*,size_t) ;
 int run_hmac_tests (size_t*,size_t) ;
 int run_test_sizes (struct alg*,size_t*,size_t) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int * strchr (char const*,char) ;
 size_t strtol (char*,char**,int ) ;
 int usage () ;
 int verbose ;
 int warnx (char*) ;

int
main(int ac, char **av)
{
 const char *algname;
 struct alg *alg;
 size_t sizes[128];
 u_int i, nsizes;
 bool testall;
 int ch;

 algname = ((void*)0);
 crid = CRYPTO_FLAG_HARDWARE;
 testall = 0;
 verbose = 0;
 while ((ch = getopt(ac, av, "A:a:d:vz")) != -1)
  switch (ch) {
  case 'A':
   aad_len = atoi(optarg);
   break;
  case 'a':
   algname = optarg;
   break;
  case 'd':
   crid = crlookup(optarg);
   break;
  case 'v':
   verbose = 1;
   break;
  case 'z':
   testall = 1;
   break;
  default:
   usage();
  }
 ac -= optind;
 av += optind;
 nsizes = 0;
 while (ac > 0) {
  char *cp;

  if (nsizes >= nitems(sizes)) {
   warnx("Too many sizes, ignoring extras");
   break;
  }
  sizes[nsizes] = strtol(av[0], &cp, 0);
  if (*cp != '\0')
   errx(1, "Bad size %s", av[0]);
  nsizes++;
  ac--;
  av++;
 }

 if (algname == ((void*)0))
  errx(1, "Algorithm required");
 if (nsizes == 0) {
  sizes[0] = 16;
  nsizes++;
  if (testall) {
   while (sizes[nsizes - 1] * 2 < 240 * 1024) {
    assert(nsizes < nitems(sizes));
    sizes[nsizes] = sizes[nsizes - 1] * 2;
    nsizes++;
   }
   if (sizes[nsizes - 1] < 240 * 1024) {
    assert(nsizes < nitems(sizes));
    sizes[nsizes] = 240 * 1024;
    nsizes++;
   }
  }
 }

 if (strcasecmp(algname, "hash") == 0)
  run_hash_tests(sizes, nsizes);
 else if (strcasecmp(algname, "hmac") == 0)
  run_hmac_tests(sizes, nsizes);
 else if (strcasecmp(algname, "blkcipher") == 0)
  run_blkcipher_tests(sizes, nsizes);
 else if (strcasecmp(algname, "authenc") == 0)
  run_authenc_tests(sizes, nsizes);
 else if (strcasecmp(algname, "aead") == 0)
  run_aead_tests(sizes, nsizes);
 else if (strcasecmp(algname, "all") == 0) {
  run_hash_tests(sizes, nsizes);
  run_hmac_tests(sizes, nsizes);
  run_blkcipher_tests(sizes, nsizes);
  run_authenc_tests(sizes, nsizes);
  run_aead_tests(sizes, nsizes);
 } else if (strchr(algname, '+') != ((void*)0)) {
  alg = build_authenc_name(algname);
  run_test_sizes(alg, sizes, nsizes);
 } else {
  alg = find_alg(algname);
  if (alg == ((void*)0))
   errx(1, "Invalid algorithm %s", algname);
  run_test_sizes(alg, sizes, nsizes);
 }

 return (0);
}
