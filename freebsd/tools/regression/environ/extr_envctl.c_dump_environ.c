
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** environ ;
 int printf (char*,char*) ;

__attribute__((used)) static void
dump_environ(void)
{
 char **environPtr;

 for (environPtr = environ; *environPtr != ((void*)0); environPtr++)
  printf("%s\n", *environPtr);

 return;
}
