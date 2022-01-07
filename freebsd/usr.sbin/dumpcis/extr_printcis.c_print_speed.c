
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int printf (char*,int) ;

__attribute__((used)) static void
print_speed(u_int i)
{
 if (i < 1000)
  printf("%u bits/sec", i);
 else if (i < 1000000)
  printf("%u kb/sec", i / 1000);
 else
  printf("%u Mb/sec", i / 1000000);
}
