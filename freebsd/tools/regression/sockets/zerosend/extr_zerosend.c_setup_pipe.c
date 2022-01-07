
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,char const*) ;
 scalar_t__ pipe (int*) ;

__attribute__((used)) static void
setup_pipe(const char *test, int *fdp)
{

 if (pipe(fdp) < 0)
  err(1, "%s: setup_pipe: pipe", test);
}
