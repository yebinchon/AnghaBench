
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 char dchar ;
 scalar_t__ wflag ;

__attribute__((used)) static int
is_delim(wchar_t ch)
{
 if (wflag) {
  if (ch == ' ' || ch == '\t')
   return 1;
 } else {
  if (ch == dchar)
   return 1;
 }
 return 0;
}
