
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
cuusage(void)
{
 fprintf(stderr, "usage: cu [-ehot] [-a acu] [-l line] "
     "[-s speed | -speed] [phone-number]\n");
 exit(8);
}
