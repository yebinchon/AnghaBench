
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
Usage(void)
{
 fprintf(stderr, "usage: nghook [-adlnsS] path [hookname]\n");
 fprintf(stderr, "   or: nghook -e [-n] [-m msg]* path hookname prog "
     "[args...]\n");
 exit(EX_USAGE);
}
