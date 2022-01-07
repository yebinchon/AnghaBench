
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
usage(const char* cmd)
{
 printf("usage: %s [-d dev] [-v] [count]\n", cmd);
 printf("count is the number of bignum ops to do\n");
 printf("\n");
 printf("-d use specific device\n");
 printf("-v be verbose\n");
 exit(-1);
}
