
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int n ;
 int printf (char*,int) ;

void
*f1(void *arg)
{
 if (n != 0) {
  printf("bug, n == %d \n", n);
  exit(1);
 }
 n = 1;
 return (0);
}
