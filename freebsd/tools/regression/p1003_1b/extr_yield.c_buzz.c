
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int random () ;

__attribute__((used)) static void buzz(int n)
{
 volatile int i;
 int m = random() & 0x0ffff;
 for (i = 0; i < m; i++)
  ;
}
