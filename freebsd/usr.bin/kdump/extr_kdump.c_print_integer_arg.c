
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ decimal ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_integer_arg(const char *(*decoder)(int), int value)
{
 const char *str;

 str = decoder(value);
 if (str != ((void*)0))
  printf("%s", str);
 else {
  if (decimal)
   printf("<invalid=%d>", value);
  else
   printf("<invalid=%#x>", value);
 }
}
