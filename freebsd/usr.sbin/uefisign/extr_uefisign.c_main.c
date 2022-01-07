
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int X509 ;
typedef int FILE ;
typedef int EVP_PKEY ;


 int ERR_print_errors_fp (int ) ;
 int OPENSSL_INIT_ADD_ALL_CIPHERS ;
 int OPENSSL_INIT_ADD_ALL_DIGESTS ;
 int OPENSSL_INIT_LOAD_CONFIG ;
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_init_crypto (int,int *) ;
 int * PEM_read_PrivateKey (int *,int *,int *,int *) ;
 int * PEM_read_X509 (int *,int *,int *,int *) ;
 int * checked_fopen (char const*,char*) ;
 char* checked_strdup (int ) ;
 int child (char const*,char const*,int,int,int) ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 scalar_t__ fork () ;
 int getopt (int,char**,char*) ;
 int optarg ;
 scalar_t__ optind ;
 int pipe (int*) ;
 int sign (int *,int *,int) ;
 int stderr ;
 int usage () ;
 int wait_for_child (scalar_t__) ;

int
main(int argc, char **argv)
{
 int ch, error;
 bool Vflag = 0, vflag = 0;
 const char *certpath = ((void*)0), *keypath = ((void*)0), *outpath = ((void*)0), *inpath = ((void*)0);
 FILE *certfp = ((void*)0), *keyfp = ((void*)0);
 X509 *cert = ((void*)0);
 EVP_PKEY *key = ((void*)0);
 pid_t pid;
 int pipefds[2];

 while ((ch = getopt(argc, argv, "Vc:k:o:v")) != -1) {
  switch (ch) {
  case 'V':
   Vflag = 1;
   break;
  case 'c':
   certpath = checked_strdup(optarg);
   break;
  case 'k':
   keypath = checked_strdup(optarg);
   break;
  case 'o':
   outpath = checked_strdup(optarg);
   break;
  case 'v':
   vflag = 1;
   break;
  default:
   usage();
  }
 }

 argc -= optind;
 argv += optind;
 if (argc != 1)
  usage();

 if (Vflag) {
  if (certpath != ((void*)0))
   errx(1, "-V and -c are mutually exclusive");
  if (keypath != ((void*)0))
   errx(1, "-V and -k are mutually exclusive");
  if (outpath != ((void*)0))
   errx(1, "-V and -o are mutually exclusive");
 } else {
  if (certpath == ((void*)0))
   errx(1, "-c option is mandatory");
  if (keypath == ((void*)0))
   errx(1, "-k option is mandatory");
  if (outpath == ((void*)0))
   errx(1, "-o option is mandatory");
 }

 inpath = argv[0];

 OPENSSL_init_crypto(OPENSSL_INIT_LOAD_CONFIG |
     OPENSSL_INIT_LOAD_CRYPTO_STRINGS |
     OPENSSL_INIT_ADD_ALL_CIPHERS | OPENSSL_INIT_ADD_ALL_DIGESTS, ((void*)0));

 error = pipe(pipefds);
 if (error != 0)
  err(1, "pipe");

 pid = fork();
 if (pid < 0)
  err(1, "fork");

 if (pid == 0)
  return (child(inpath, outpath, pipefds[1], Vflag, vflag));

 if (!Vflag) {
  certfp = checked_fopen(certpath, "r");
  cert = PEM_read_X509(certfp, ((void*)0), ((void*)0), ((void*)0));
  if (cert == ((void*)0)) {
   ERR_print_errors_fp(stderr);
   errx(1, "failed to load certificate from %s", certpath);
  }

  keyfp = checked_fopen(keypath, "r");
  key = PEM_read_PrivateKey(keyfp, ((void*)0), ((void*)0), ((void*)0));
  if (key == ((void*)0)) {
   ERR_print_errors_fp(stderr);
   errx(1, "failed to load private key from %s", keypath);
  }

  sign(cert, key, pipefds[0]);
 }

 return (wait_for_child(pid));
}
