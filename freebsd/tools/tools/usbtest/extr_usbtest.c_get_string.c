
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int * fgets (char*,int,int ) ;
 int printf (char*) ;
 int stdin ;
 int strlen (char*) ;

void
get_string(char *ptr, int size)
{
 printf("\nEnter string>");

 if (fgets(ptr, size, stdin) == ((void*)0))
  err(1, "Cannot read input");

 ptr[size - 1] = 0;

 size = strlen(ptr);


 if (size == 0)
  return;
 else if (ptr[size - 1] == '\n')
  ptr[size - 1] = 0;
}
