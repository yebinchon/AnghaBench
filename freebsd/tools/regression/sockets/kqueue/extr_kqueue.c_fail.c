
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curtest ;
 int exit (int) ;
 int printf (char*,...) ;
 char* strerror (int) ;

__attribute__((used)) static void
fail(int error, const char *func, const char *socktype, const char *rest)
{

 printf("not ok %d\n", curtest);

 if (socktype == ((void*)0))
  printf("# %s(): %s\n", func, strerror(error));
 else if (rest == ((void*)0))
  printf("# %s(%s): %s\n", func, socktype,
      strerror(error));
 else
  printf("# %s(%s, %s): %s\n", func, socktype, rest,
      strerror(error));
 exit(-1);
}
