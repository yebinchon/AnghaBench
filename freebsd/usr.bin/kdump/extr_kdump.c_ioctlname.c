
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ decimal ;
 int printf (char*,...) ;
 char* sysdecode_ioctlname (unsigned long) ;

__attribute__((used)) static void
ioctlname(unsigned long val)
{
 const char *str;

 str = sysdecode_ioctlname(val);
 if (str != ((void*)0))
  printf("%s", str);
 else if (decimal)
  printf("%lu", val);
 else
  printf("%#lx", val);
}
