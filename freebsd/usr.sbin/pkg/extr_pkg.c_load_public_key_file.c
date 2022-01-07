
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int ERR_error_string (int ,char*) ;
 int ERR_get_error () ;
 int EXIT_FAILURE ;
 int * PEM_read_bio_PUBKEY (int *,int *,int *,int *) ;
 int errx (int ,char*,char const*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static EVP_PKEY *
load_public_key_file(const char *file)
{
 EVP_PKEY *pkey;
 BIO *bp;
 char errbuf[1024];

 bp = BIO_new_file(file, "r");
 if (!bp)
  errx(EXIT_FAILURE, "Unable to read %s", file);

 if ((pkey = PEM_read_bio_PUBKEY(bp, ((void*)0), ((void*)0), ((void*)0))) == ((void*)0))
  warnx("ici: %s", ERR_error_string(ERR_get_error(), errbuf));

 BIO_free(bp);

 return (pkey);
}
