
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 int address ;
 scalar_t__ getchar () ;
 int skip ;

__attribute__((used)) static void
noseek(void)
{
 int count;
 for (count = 0; count < skip; ++count)
  if (getchar() == EOF)
   break;
 address += count;
 skip -= count;
}
