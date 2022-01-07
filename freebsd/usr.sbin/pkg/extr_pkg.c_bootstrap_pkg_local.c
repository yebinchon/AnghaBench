
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int EXIT_FAILURE ;
 int MAXPATHLEN ;
 int O_RDONLY ;
 int SIGNATURE_TYPE ;
 int close (int) ;
 scalar_t__ config_string (int ,char const**) ;
 int err (int ,char*,char const*) ;
 int extract_pkg_static (int,char*,int) ;
 int fprintf (int ,char*) ;
 int install_pkg_static (char*,char const*,int) ;
 int open (char const*,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 int stderr ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int verify_pubsignature (int,int) ;
 int verify_signature (int,int) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
bootstrap_pkg_local(const char *pkgpath, bool force)
{
 char path[MAXPATHLEN];
 char pkgstatic[MAXPATHLEN];
 const char *signature_type;
 int fd_pkg, fd_sig, ret;

 fd_sig = -1;
 ret = -1;

 fd_pkg = open(pkgpath, O_RDONLY);
 if (fd_pkg == -1)
  err(EXIT_FAILURE, "Unable to open %s", pkgpath);

 if (config_string(SIGNATURE_TYPE, &signature_type) != 0) {
  warnx("Error looking up SIGNATURE_TYPE");
  goto cleanup;
 }
 if (signature_type != ((void*)0) &&
     strcasecmp(signature_type, "NONE") != 0) {
  if (strcasecmp(signature_type, "FINGERPRINTS") == 0) {

   snprintf(path, sizeof(path), "%s.sig", pkgpath);

   if ((fd_sig = open(path, O_RDONLY)) == -1) {
    fprintf(stderr, "Signature for pkg not "
        "available.\n");
    goto cleanup;
   }

   if (verify_signature(fd_pkg, fd_sig) == 0)
    goto cleanup;

  } else if (strcasecmp(signature_type, "PUBKEY") == 0) {

   snprintf(path, sizeof(path), "%s.pubkeysig", pkgpath);

   if ((fd_sig = open(path, O_RDONLY)) == -1) {
    fprintf(stderr, "Signature for pkg not "
        "available.\n");
    goto cleanup;
   }

   if (verify_pubsignature(fd_pkg, fd_sig) == 0)
    goto cleanup;

  } else {
   warnx("Signature type %s is not supported for "
       "bootstrapping.", signature_type);
   goto cleanup;
  }
 }

 if ((ret = extract_pkg_static(fd_pkg, pkgstatic, MAXPATHLEN)) == 0)
  ret = install_pkg_static(pkgstatic, pkgpath, force);

cleanup:
 close(fd_pkg);
 if (fd_sig != -1)
  close(fd_sig);

 return (ret);
}
