
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;

__attribute__((used)) static void
getusage(char *s)
{

 printf("usage: %s file [localname]\n", s);
 printf("       %s [host:]file [localname]\n", s);
 printf("       %s [host1:]file1 [host2:]file2 ... [hostN:]fileN\n", s);
}
