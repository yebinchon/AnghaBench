
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int stderr ;

__attribute__((used)) static void
failx(const char *test, const char *note)
{

 fprintf(stderr, "%s - %s: FAIL\n", test, note);
 exit(1);
}
