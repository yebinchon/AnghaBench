
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void
an_printbool(int val)
{
 if (val)
  printf("[ On ]");
 else
  printf("[ Off ]");
}
