
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int my_exit (int ) ;
 int printf (char*) ;

void
version(void)
{
 printf("patch 2.0-12u11 FreeBSD\n");
 my_exit(EXIT_SUCCESS);
}
