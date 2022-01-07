
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int free (char*) ;
 int msort_with_tmp (void*,size_t,size_t,int (*) (void const*,void const*,void*),char*,void*) ;
 size_t st_mult (size_t,size_t) ;
 char* xmalloc (size_t const) ;

int git_qsort_s(void *b, size_t n, size_t s,
  int (*cmp)(const void *, const void *, void *), void *ctx)
{
 const size_t size = st_mult(n, s);
 char buf[1024];

 if (!n)
  return 0;
 if (!b || !cmp)
  return -1;

 if (size < sizeof(buf)) {

  msort_with_tmp(b, n, s, cmp, buf, ctx);
 } else {

  char *tmp = xmalloc(size);
  msort_with_tmp(b, n, s, cmp, tmp, ctx);
  free(tmp);
 }
 return 0;
}
