
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int malloc_startup (size_t) ;
 char* memcpy (int ,char*,size_t) ;
 int xwcstoutf (char*,int const*,size_t) ;

__attribute__((used)) static char *wcstoutfdup_startup(char *buffer, const wchar_t *wcs, size_t len)
{
 len = xwcstoutf(buffer, wcs, len) + 1;
 return memcpy(malloc_startup(len), buffer, len);
}
