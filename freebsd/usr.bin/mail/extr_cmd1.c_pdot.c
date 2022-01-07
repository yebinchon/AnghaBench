
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dot ;
 int * message ;
 int printf (char*,int) ;

int
pdot(void)
{
 printf("%td\n", dot - &message[0] + 1);
 return (0);
}
