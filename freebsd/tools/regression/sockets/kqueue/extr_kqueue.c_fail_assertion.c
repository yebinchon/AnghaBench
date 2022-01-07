
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curtest ;
 int exit (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
fail_assertion(const char *func, const char *socktype, const char *rest,
    const char *assertion)
{

 printf("not ok %d - %s\n", curtest, assertion);

 if (socktype == ((void*)0))
  printf("# %s(): assertion %s failed\n", func,
      assertion);
 else if (rest == ((void*)0))
  printf("# %s(%s): assertion %s failed\n", func,
      socktype, assertion);
 else
  printf("# %s(%s, %s): assertion %s failed\n", func,
      socktype, rest, assertion);
 exit(-1);
}
