
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 size_t depth ;
 int * ignoring ;

__attribute__((used)) static void
ignoreoff(void)
{
 if (depth == 0)
  abort();
 ignoring[depth] = ignoring[depth-1];
}
