
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MPSUTIL_VERSION ;
 char* getprogname () ;
 int printf (char*,...) ;

__attribute__((used)) static int
version(int ac, char **av)
{

 printf("%s: version %s", MPSUTIL_VERSION, getprogname());



 printf("\n");
 return (0);
}
