
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr, "%s %s\n%s\n",
     "usage: join [-a fileno | -v fileno ] [-e string] [-1 field]",
     "[-2 field]",
  "            [-o list] [-t char] file1 file2");
 exit(1);
}
