
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage()
{
 fprintf(stderr,
     "Usage: mkfile [-nv] <size>[e|p|t|g|m|k|b] <filename> ...\n");
}
