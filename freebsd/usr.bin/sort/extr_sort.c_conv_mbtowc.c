
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int MB_CUR_MAX ;
 int mbtowc (int *,char const*,int ) ;

__attribute__((used)) static void
conv_mbtowc(wchar_t *wc, const char *c, const wchar_t def)
{

 if (wc && c) {
  int res;

  res = mbtowc(wc, c, MB_CUR_MAX);
  if (res < 1)
   *wc = def;
 }
}
