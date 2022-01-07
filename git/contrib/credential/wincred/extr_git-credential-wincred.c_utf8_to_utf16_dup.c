
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_UTF8 ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int * xmalloc (int) ;

__attribute__((used)) static WCHAR *utf8_to_utf16_dup(const char *str)
{
 int wlen = MultiByteToWideChar(CP_UTF8, 0, str, -1, ((void*)0), 0);
 WCHAR *wstr = xmalloc(sizeof(WCHAR) * wlen);
 MultiByteToWideChar(CP_UTF8, 0, str, -1, wstr, wlen);
 return wstr;
}
