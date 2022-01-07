
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 char* prog ;
 int stderr ;

void
usage(void)
{
    fprintf(stderr, "usage: %s [-a] [-n] [-s slot]\n", prog);
}
