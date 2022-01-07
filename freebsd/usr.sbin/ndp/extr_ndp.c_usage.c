
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*) ;

__attribute__((used)) static void
usage()
{
 printf("usage: ndp [-nt] hostname\n");
 printf("       ndp [-nt] -a | -c | -p | -r | -H | -P | -R\n");
 printf("       ndp [-nt] -A wait\n");
 printf("       ndp [-nt] -d hostname\n");
 printf("       ndp [-nt] -f filename\n");
 printf("       ndp [-nt] -i interface [flags...]\n");



 printf("       ndp [-nt] -s nodename etheraddr [temp] [proxy]\n");
 exit(1);
}
