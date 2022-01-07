
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr, "%s\n%s\n%s\n%s\n",
  "usage: tr [-Ccsu] string1 string2",
  "       tr [-Ccu] -d string1",
  "       tr [-Ccu] -s string1",
  "       tr [-Ccu] -ds string1 string2");
 exit(1);
}
