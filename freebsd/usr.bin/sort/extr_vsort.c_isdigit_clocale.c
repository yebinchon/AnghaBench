
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static inline bool
isdigit_clocale(wchar_t c)
{

 return (c >= L'0' && c <= L'9');
}
