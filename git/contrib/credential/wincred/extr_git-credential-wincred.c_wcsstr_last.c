
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPCWSTR ;


 int * wcsstr (int *,int *) ;

__attribute__((used)) static LPCWSTR wcsstr_last(LPCWSTR str, LPCWSTR find)
{
 LPCWSTR res = ((void*)0), pos;
 for (pos = wcsstr(str, find); pos; pos = wcsstr(pos + 1, find))
  res = pos;
 return res;
}
