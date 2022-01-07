
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int MB_CUR_MAX ;
 int err (int,int *) ;
 int free (int *) ;
 int strcoll (char const*,char const*) ;
 int * towcs (char const*) ;
 int wcscoll (int *,int *) ;

__attribute__((used)) static int
mbscoll(const char *s1, const char *s2)
{
 wchar_t *w1, *w2;
 int ret;

 if (MB_CUR_MAX == 1)
  return (strcoll(s1, s2));
 if ((w1 = towcs(s1)) == ((void*)0) || (w2 = towcs(s2)) == ((void*)0))
  err(1, ((void*)0));
 ret = wcscoll(w1, w2);
 free(w1);
 free(w2);
 return (ret);
}
