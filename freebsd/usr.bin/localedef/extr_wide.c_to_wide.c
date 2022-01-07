
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int _towide (int *,char const*,int ) ;
 int strlen (char const*) ;

int
to_wide(wchar_t *wc, const char *mb)
{

 return (_towide(wc, mb, strlen(mb)));
}
