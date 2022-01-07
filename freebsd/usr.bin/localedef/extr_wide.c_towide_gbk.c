
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int towide_dbcs (int *,char const*,unsigned int) ;

int
towide_gbk(wchar_t *wc, const char *mb, unsigned n)
{
 return (towide_dbcs(wc, mb, n));
}
