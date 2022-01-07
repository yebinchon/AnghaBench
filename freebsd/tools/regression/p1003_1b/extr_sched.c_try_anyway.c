
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 int fputs (char const*,int ) ;
 int stderr ;

__attribute__((used)) static void try_anyway(const char *s)
{
 fputs(s, stderr);
 fprintf(stderr, "(trying anyway)\n");
 errno = 0;
}
