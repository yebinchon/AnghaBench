
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_type {int ks_shortdesc; struct malloc_type* ks_next; } ;


 int MA_OWNED ;
 struct malloc_type* kmemstatistics ;
 int malloc_mtx ;
 int mtx_assert (int *,int ) ;
 scalar_t__ strcmp (int ,char const*) ;

struct malloc_type *
malloc_desc2type(const char *desc)
{
 struct malloc_type *mtp;

 mtx_assert(&malloc_mtx, MA_OWNED);
 for (mtp = kmemstatistics; mtp != ((void*)0); mtp = mtp->ks_next) {
  if (strcmp(mtp->ks_shortdesc, desc) == 0)
   return (mtp);
 }
 return (((void*)0));
}
