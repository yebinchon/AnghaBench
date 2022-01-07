
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int printf (char*,int) ;

__attribute__((used)) static void
print_size(u_int i)
{
 if (i < 1024)
  printf("%ubits", i);
 else if (i < 1024*1024)
  printf("%ukb", i / 1024);
 else
  printf("%uMb", i / (1024*1024));
}
