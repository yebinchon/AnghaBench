
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int towide_euc_impl (int *,char const*,unsigned int,int ,int ,int ,int ) ;

int
towide_euckr(wchar_t *wc, const char *mb, unsigned n)
{
 return (towide_euc_impl(wc, mb, n, 0, 0, 0, 0));
}
