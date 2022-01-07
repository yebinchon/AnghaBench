
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kerneldumpcomp {struct kerneldumpcomp* kdc_buf; int kdc_stream; } ;
struct dumperinfo {int maxiosize; struct kerneldumpcomp* kdcomp; } ;


 int M_DUMPER ;
 int compressor_fini (int ) ;
 int explicit_bzero (struct kerneldumpcomp*,int ) ;
 int free (struct kerneldumpcomp*,int ) ;

__attribute__((used)) static void
kerneldumpcomp_destroy(struct dumperinfo *di)
{
 struct kerneldumpcomp *kdcomp;

 kdcomp = di->kdcomp;
 if (kdcomp == ((void*)0))
  return;
 compressor_fini(kdcomp->kdc_stream);
 explicit_bzero(kdcomp->kdc_buf, di->maxiosize);
 free(kdcomp->kdc_buf, M_DUMPER);
 free(kdcomp, M_DUMPER);
}
