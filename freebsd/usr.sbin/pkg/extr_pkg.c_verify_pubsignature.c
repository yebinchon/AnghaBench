
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pubkey {struct pubkey* sig; int siglen; } ;


 int PUBKEY ;
 scalar_t__ config_string (int ,char const**) ;
 int fprintf (int ,char*) ;
 int free (struct pubkey*) ;
 int printf (char*,char const*) ;
 struct pubkey* read_pubkey (int) ;
 int rsa_verify_cert (int,char const*,int *,int ,struct pubkey*,int ) ;
 int stderr ;
 int warnx (char*) ;

__attribute__((used)) static bool
verify_pubsignature(int fd_pkg, int fd_sig)
{
 struct pubkey *pk;
 const char *pubkey;
 bool ret;

 pk = ((void*)0);
 pubkey = ((void*)0);
 ret = 0;
 if (config_string(PUBKEY, &pubkey) != 0) {
  warnx("No CONFIG_PUBKEY defined");
  goto cleanup;
 }

 if ((pk = read_pubkey(fd_sig)) == ((void*)0)) {
  warnx("Error reading signature");
  goto cleanup;
 }


 printf("Verifying signature with public key %s... ", pubkey);
 if (rsa_verify_cert(fd_pkg, pubkey, ((void*)0), 0, pk->sig,
     pk->siglen) == 0) {
  fprintf(stderr, "Signature is not valid\n");
  goto cleanup;
 }

 ret = 1;

cleanup:
 if (pk) {
  free(pk->sig);
  free(pk);
 }

 return (ret);
}
