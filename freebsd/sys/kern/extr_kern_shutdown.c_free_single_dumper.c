
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumperinfo {int blocksize; int kdc_dumpkeysize; struct dumperinfo* kdcrypto; struct dumperinfo* blockbuf; } ;


 int M_DUMPER ;
 int M_EKCD ;
 int explicit_bzero (struct dumperinfo*,int) ;
 int free (struct dumperinfo*,int ) ;
 int kerneldumpcomp_destroy (struct dumperinfo*) ;

__attribute__((used)) static void
free_single_dumper(struct dumperinfo *di)
{

 if (di == ((void*)0))
  return;

 if (di->blockbuf != ((void*)0)) {
  explicit_bzero(di->blockbuf, di->blocksize);
  free(di->blockbuf, M_DUMPER);
 }

 kerneldumpcomp_destroy(di);
 explicit_bzero(di, sizeof(*di));
 free(di, M_DUMPER);
}
