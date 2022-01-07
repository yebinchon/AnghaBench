
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 scalar_t__ depth ;

__attribute__((used)) static void
unnest(void)
{
 if (depth == 0)
  abort();
 depth -= 1;
}
