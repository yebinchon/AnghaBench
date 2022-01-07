
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ EOF ;
 scalar_t__ EQUAL ;
 scalar_t__ compare (int *,unsigned char*,unsigned char*) ;
 int err (int,char*) ;
 scalar_t__ putchar (char) ;

__attribute__((used)) static void
print_from(wchar_t *string, unsigned char *front, unsigned char *back)
{
 for (; front < back && compare(string, front, back) == EQUAL; ++front) {
  for (; front < back && *front != '\n'; ++front)
   if (putchar(*front) == EOF)
    err(2, "stdout");
  if (putchar('\n') == EOF)
   err(2, "stdout");
 }
}
