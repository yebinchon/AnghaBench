
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int INTERR ;
 int free (char*) ;
 char* malloc (int) ;
 int mb_cur_max ;
 int to_mb (char*,int const) ;
 int warn (char*) ;
 int wcslen (int const*) ;

char *
to_mb_string(const wchar_t *wcs)
{
 char *mbs;
 char *ptr;
 int len;

 mbs = malloc((wcslen(wcs) * mb_cur_max) + 1);
 if (mbs == ((void*)0)) {
  warn("out of memory");
  return (((void*)0));
 }
 ptr = mbs;
 while (*wcs) {
  if ((len = to_mb(ptr, *wcs)) < 0) {
   INTERR;
   free(mbs);
   return (((void*)0));
  }
  wcs++;
  ptr += len;
 }
 *ptr = 0;
 return (mbs);
}
