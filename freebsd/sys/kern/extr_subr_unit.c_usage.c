
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;

__attribute__((used)) static void
usage(char** argv)
{
 printf("%s [-h] [-r REPETITIONS] [-v]\n", argv[0]);
}
